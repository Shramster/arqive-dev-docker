from rest_framework_api_key.models import APIKey
api_key, key = APIKey.objects.create_key(name='arqive-rest-api-key')
env_file="DOMAIN=http://127.0.0.1:8000/api\n"+"REACT_APP_ARQIVE=$DOMAIN\n"+"REACT_APP_API_KEY="+key+"\n"
print(env_file)
quit()
