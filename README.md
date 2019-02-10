# Events Prototype API

This Project aims to represent data of events by a JSON API

## Implementation

### *GET*

```
"/api/v1/comments"
```
Response (Status: 200)

_The endpoint returns comments of events_

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
