import pandas
import warnings
import os
warnings.filterwarnings('ignore')

def get_history_list(user_id : int, emotions : list = None, start_idx = 0, count = 10, order = 'score') -> list:
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
    history_data = pandas.read_json(os.path.join('./', "data.json"), orient='table')
    if emotions:
        filtered_history_data = history_data[history_data['emotion'].str.contains('|'.join(emotions), na=True)]
    else:
        filtered_history_data = history_data
    
    filtered_history_data.sort_values(order, ascending=False, inplace=True)
    history_list = history_data[history_data['user_id']==user_id][['isbn', 'average_rating']].reset_index(drop=True)[int(start_idx):int(start_idx)+int(count)].values.tolist()
    return history_list

def history(request):
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
    order = 'average_rating'
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

    result = str(get_history_list(user_id = uid, start_idx = start_idx, count = count, order = order, emotions=emotion_list))
    
    return (result, 200, headers)
