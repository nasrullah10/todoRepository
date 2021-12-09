<?php
namespace App;
class Helper {

public static function sendPushNotification($title, $message,$fcm_token) {  
        
        $push_notification_key = "AAAAgrOwFoc:APA91bHqhayltt14Ygg0NMw21TDW952dgJuwvUxXOGet7LjqL9tpb9gVtkR3xiqZJwEDyh6i7heYkQA3KwZUJ-Wi1skTr79jwWI7xs7WWV8Og-tjkFRd1xFtyk4P2zP-OmWtsrfnqO7Z";    
        $url = "https://fcm.googleapis.com/fcm/send";            
        $header = array("authorization: key=" . $push_notification_key . "",
            "content-type: application/json"
        );    

        $postdata = '{
            "to" : $fcm_token,
                "notification" : {
                    "title":"' . $title . '",
                    "text" : "' . $message . '"
                },
            "data" : {
          
                "title":"' . $title . '",
                "description" : "' . $message . '",
                "text" : "' . $message . '",
                "is_read": 0
              }
        }';

        $ch = curl_init();
        $timeout = 120;
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($ch, CURLOPT_POSTFIELDS, $postdata);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $header);

        // Get URL content
        $result = curl_exec($ch);    
        // close handle to release resources
        curl_close($ch);

        return $result;
    }

}

