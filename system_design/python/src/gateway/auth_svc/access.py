import os, requests

def login(request):
    auth = request.authorization
    if not auth:
        return None, ("missing credentials", 401)
    basicAut = (auth.username, auth.password)
    response = requests.post(
        f"http://{os.environ.get('AUTH_SVC_ADDRESS')}/login",
        auth=basicAut
    )    

    if response.status_code == 200:
        return response.text, None
    else:
        return None, (response.text, response.status_code)