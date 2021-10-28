import pandas
import warnings
import os
warnings.filterwarnings('ignore')

"""get_recommendation.ipynb
Original file is located at
    https://colab.research.google.com/drive/16_0i8Np4HZRD-fSymNlat2EGT3UtInXj
"""

def get_recommendation(user_id : int, emotions : list = None, start_idx = 0, count = 10, order = 'score') -> list:
    """
    user_id(int): 사용자 id
    emotions(<str>list): 감정 리스트
        - 예시
            - ['love'] 또는 ['anger', 'fear']
            - 'love' 불가
    start_idx(int): 추천목록 시작 인덱스
    count(int): 추천받을 개수
    order(str): 정렬 기준
        - 'score', 'confidence', 'average_rating', 'ratings_count'
    """
    recommend_data = pandas.read_json(os.path.join('./', "data.json"), orient='table')
    if emotions:
        filtered_recommend_data = recommend_data[recommend_data['emotion'].str.contains('|'.join(emotions), na=True)]
    else:
        filtered_recommend_data = recommend_data

    filtered_recommend_data.sort_values(order, ascending=False, inplace=True)
    recommend_list = recommend_data[recommend_data['user_id']==user_id].reset_index(drop=True)[int(start_idx):int(start_idx)+int(count)].values.tolist()
    return recommend_list

def recommend(request):
    """Responds to any HTTP request.
    Args:
        request (flask.Request): HTTP request object.
    Returns:
        The response text or any set of values that can be turned into a
        Response object using
        `make_response <http://flask.pocoo.org/docs/1.0/api/#flask.Flask.make_response>`.
    """
    headers = {
        'Access-Control-Allow-Origin': '*',
        'Access-Control-Allow-Methods': '*',
        'Access-Control-Allow-Headers': '*',
        'Access-Control-Max-Age': '3600'
    }

    uid = 202169
    start_idx = 0
    count = 5
    order = 'score'
    emotion_list = []
    request_json = request.get_json(force = True, silent = True)
    if request_json and 'test_table' in request_json:
        result = str(pandas.read_json(os.path.join('./', "data.json")))
        
    elif request_json:
        if 'uid' in request_json:
            uid = int(request_json['uid'])
        
        if 'count' in request_json:
            count = int(request_json['count'])
            
        if 'start_idx' in request_json:
            start_idx = int(request_json['start_idx'])
        
        if 'order' in request_json:
            order = str(request_json['order'])

        if 'emotions' in request_json:
            emotions_value = int(request_json['emotions'])
            if emotions_value & 0x01:
                emotion_list.append('anger')
            if emotions_value & 0x02:
                emotion_list.append('fear')
            if emotions_value & 0x04:
                emotion_list.append('joy')
            if emotions_value & 0x08:
                emotion_list.append('love')
            if emotions_value & 0x10:
                emotion_list.append('sadness')
            if emotions_value & 0x20:
                emotion_list.append('surprise')

    result = str(get_recommendation(user_id = uid, start_idx = start_idx, count = count, order = order, emotions=emotion_list))
    
    return (result, 200, headers)
