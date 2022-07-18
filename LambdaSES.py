import json
import boto3

def lambda_handler(event, context):
    
    ses = boto3.client('ses')

    body = """
	    Hello and welcome to the SES Lambda Python Demo.
	
	    Regards,
	    Ahmed Abdelsalam
    """

    ses.send_email(
	    Source = 'ahmedabdelsalamgameel1032@gmail.com',
	    Destination = {
		    'ToAddresses': [
			    'ahmedabdelsalamgameel1032@gmail.com'
		    ]
	    },
	    Message = {
		    'Subject': {
			    'Data': 'SES Demo',
			    'Charset': 'UTF-8'
		    },
		    'Body': {
			    'Text':{
				    'Data': body,
				    'Charset': 'UTF-8'
			    }
		    }
	    }
    )
    
    return {
        'statusCode': 200,
        'body': json.dumps('Successfully sent email from Lambda using Amazon SES')
    }