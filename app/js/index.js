function get_game () {
    return {
        "id":0,
        "epidemics":0,
        "infections":0,
        "disease": {
            "atlanta":3,
            "bogota":3,
            "new york":3
        },
        "players": [
            {
                "id":0,
                "name":"medic",
                "location":"atlanta",
                "cards": []
            },
            {
                "id":1,
                "name":"researcher",
                "location":"atlanta",
                "cards": []
            }
        ],
        "research": [
            "atlanta"
        ]
    };
}