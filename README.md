# Events Prototype API

This Project aims to represent data of events by a JSON API

## Implementation

### *GET*

```
"/api/v1/comments"
```
Response (Status: 200)

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
text     | string  | A description of event |
user_id  | integer | Id of user             |
event_id | integer | Id of Event            | 

### *POST*

```
"/api/v1/comments"
```
Response (Status: 201)

```The endpoint returns comments of events```

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

Field    | Type    | Description            |
-----    | ----    | -----------            |
text     | string  | A description of event |
user_id  | integer | Id of user             |
event_id | integer | Id of Event            | 
