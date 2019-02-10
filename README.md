# Events Prototype API

This Project aims to represent data of events by a JSON API

## Implementation

### **GET**

```
"/api/v1/events"
```
**Response (Status: 200)**

```The endpoint returns events```

```
    {
        "id": 1,
        "name": "You’re going to take out the demigorgon with a slingshot?",
        "description": "A Great Event",
        "lat": "-20.7966869",
        "lng": "-51.6949129",
        "created_at": "2019-02-09T19:35:11.000Z",
        "updated_at": "2019-02-09T19:35:11.000Z"
    }
```
Response Content type ```application/json```

Field        | Type    | Description            |
-----        | ----    | -----------            |
id           | integer | Id of event            |
name         | string  | A name of event        |
description  | string  | A description of event |
lat          | string  | Latitude do evento     |
lng          | string  | Latitude do evento     | 

### **GET**

```
"/api/v1/comments"
```
**Response (Status: 200)**

```The endpoint returns comments of events```

```
    {
        "id": 1,
        "text": "Eu adorei a festa",
        "user_id": 1,
        "event_id": 1,
        "created_at": "2019-02-09T21:40:38.000Z",
        "updated_at": "2019-02-09T21:40:38.000Z"
    }
```
Response Content type ```application/json```

Field    | Type    | Description            |
-----    | ----    | -----------            |
id       | integer | Id                     |
text     | string  | A comment of event .   |
user_id  | integer | Id of user             |
event_id | integer | Id of Event            | 

### **GET**

```
"/api/v1/comments#comments_reporteds"
```
**Response (Status: 200)**

```The endpoint returns comments reporteds```

```
    {
        "id": 6,
        "text": "Meetup sobre Rails",
        "user_id": 1,
        "event_id": 1,
        "created_at": "2019-02-10T18:22:49.000Z",
        "updated_at": "2019-02-10T18:22:49.000Z"
    }
```
Response Content type ```application/json```

Field      | Type    | Description            |
-----      | ----    | -----------            |
user_id    | integer | Id of user             |
comment_id | integer | Id of Comment          | 

### **POST**

```
"/api/v1/comments"
```
**Response (Status: 201)**


The endpoint returns the registered comment

```
{
    "id": 6,
    "text": "Meetup sobre Rails",
    "user_id": 1,
    "event_id": 1,
    "created_at": "2019-02-10T18:22:49.000Z",
    "updated_at": "2019-02-10T18:22:49.000Z"
}
```

Field    | Type    | Description            |
-----    | ----    | -----------            |
text     | string  | A description of event |
user_id  | integer | Id of user             |
event_id | integer | Id of Event            | 


**Response (Status: 422)**


```The endpoint returns a missing data error```

```
{
    "errors": {
        "event": [
            "must exist"
        ],
        "event_id": [
            "can't be blank"
        ]
    }
}
```
