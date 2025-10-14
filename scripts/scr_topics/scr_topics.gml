global.topics = {};

global.topics[$ "Example"] = [
	TEXT("Hello there!"),
	TEXT("Ths is some example text."),
	TEXT("We should test having a page with lots of words in it, to make sure that the line break feature is working properly.")
];

global.topics[$ "welcome"] = [
	SPEAKER("Aribel", spr_portrait_player),
	TEXT("Good morning! How are you today!"),
	SPEAKER("Aribel", spr_portrait_player),
	TEXT("I'm doing very well! And you?"),
	SPEAKER("Aribel", spr_portrait_player),
	TEXT("I can't complain, except for one thing..."),
	SPEAKER("Aribel", spr_portrait_player),
	TEXT("Yea!")
];

global.topics[$ "test"] = [
	SPEAKER("Aribel", spr_portrait_player),
	CHOICE("What do you want for breakfast?",
		OPTION("Right Option", "Right"),
		OPTION("Wrong Option", "Wrong"))
];

global.topics[$ "Right"] = [
	TEXT("That's a healthy way to start the day!"),
	GOTO("End")
];

global.topics[$ "Wrong"] = [
	TEXT("Ooh, yummy!"),
	GOTO("End")
];

global.topics[$ "End"] = [
	TEXT("Goodbye, now!")
];