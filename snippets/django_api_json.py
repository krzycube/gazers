import json

from django.http import HttpResponse

response_data = {}
response_data['result'] = 'failed'
response_data['message'] = 'You messed up'
return HttpResponse(json.dumps(response_data), content_type="application/json")



#######################################

from django.core import serializers
from django.http import HttpResponse

def verses(request, version, book, chapter, verse, verse2):
  '''Returns a list of verses for a given version, book, chapter, and optional verses'''
  verses = Verse().get_verses(version, book, chapter, verse, verse2)
  if 'application/json' in request.META.get('HTTP_ACCEPT'):
    return HttpResponse(serializers.serialize("json", verses), mimetype='application/json')
  else:
    #do some non-json stuff here
    return...


#test
curl --header "Accept: application/json" http://url/path/to/your/api/


######################################
'''

condition on request for render html or just json response_data:

You can use request.is_ajax(). But that requires that the HTTP_X_REQUESTED_WITH header is set. 
Most JavaScript libraries do this automatically, but if you're using some other type of client, 
you'll need to make sure it sets it as well. 
Alternatively, you can pass a querystring such as ?json with the URL and then check request.GET.has_key('json'), 
which is probably a little more foolproof.
'''

