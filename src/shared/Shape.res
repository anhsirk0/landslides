@module("../assets/peter-griffin-post.jpg") external peterPostImg: string = "default"

module Netflix = {
  module Reason = {
    type t = {title: string, content: string, icon: Icon.t}
    let all = [
      {
        title: "Enjoy on your TV",
        icon: Icon.television,
        content: "Watch on smart TVs, PlayStation, Xbox, Chromecast, Apple TV, Blu-ray players and more.",
      },
      {
        title: "Download your shows to watch offline",
        icon: Icon.download,
        content: "Save your favourites easily and always have something to watch.",
      },
      {
        title: "Watch everywhere",
        icon: Icon.binoculars,
        content: "Stream unlimited movies and TV shows on your phone, tablet, laptop and TV.",
      },
      {
        title: "Create profiles for kids",
        icon: Icon.baby,
        content: "Send kids on adventures with their favourite characters in a space made just for them — free with your membership.",
      },
    ]
  }

  module Faq = {
    type t = {que: string, ans: array<string>}
    let all = [
      {
        que: "What is Netflix?",
        ans: [
          "Netflix is a streaming service that offers a wide variety of award-winning TV shows, movies, anime, documentaries and more – on thousands of internet-connected devices.",
          "You can watch as much as you want, whenever you want, without a single ad – all for one low monthly price. There's always something new to discover, and new TV shows and movies are added every week!",
        ],
      },
      {
        que: "How much does Netflix cost?",
        ans: [
          "Watch Netflix on your smartphone, tablet, Smart TV, laptop, or streaming device, all for one fixed monthly fee. Plans range from ₹149 to ₹649 a month. No extra costs, no contracts.",
        ],
      },
      {
        que: "Where can I watch?",
        ans: [
          "Watch anywhere, anytime. Sign in with your Netflix account to watch instantly on the web at netflix.com from your personal computer or on any internet-connected device that offers the Netflix app, including smart TVs, smartphones, tablets, streaming media players and game consoles.",
          "You can also download your favourite shows with the iOS or Android app. Use downloads to watch while you're on the go and without an internet connection. Take Netflix with you anywhere.",
        ],
      },
      {
        que: "How do I cancel?",
        ans: [
          "Netflix is flexible. There are no annoying contracts and no commitments. You can easily cancel your account online in two clicks. There are no cancellation fees – start or stop your account anytime.",
        ],
      },
      {
        que: "What can I watch on Netflix?",
        ans: [
          "Netflix has an extensive library of feature films, documentaries, TV shows, anime, award-winning Netflix originals, and more. Watch as much as you want, anytime you want.",
        ],
      },
      {
        que: "Is Netflix good for kids?",
        ans: [
          "The Netflix Kids experience is included in your membership to give parents control while kids enjoy family-friendly TV shows and films in their own space.",
          "Kids profiles come with PIN-protected parental controls that let you restrict the maturity rating of content kids can watch and block specific titles you don’t want kids to see.",
        ],
      },
    ]
  }
}

module Spotify = {
  let otherlinks = [
    ["Legal", "Safety & Privacy Center", "Privacy Policy"],
    ["About Ads", "Accessibility"],
    ["Cookies"],
  ]

  let categories = ["artists", "albums", "radio"]
}

module Youtube = {
  type t = {title: string, icon: Icon.t}
  let sidelinks = [
    {title: "Home", icon: Icon.house},
    {title: "Shorts", icon: Icon.ytshorts},
    {title: "Subscriptions", icon: Icon.ytsubscription},
    // {title: "You", icon: Icon.userCircle},
  ]
  let youlinks = [
    {title: "History", icon: Icon.history},
    {title: "Playlists", icon: Icon.playlist},
    {title: "Your Videos", icon: Icon.video},
    {title: "Watch later", icon: Icon.clock},
    {title: "Liked Videos", icon: Icon.thumbsUp},
  ]
}

module Bluesky = {
  type t = {name: string, username: string, text: string, image?: string}
  let all = [
    {
      name: "Peter Griffin",
      username: "pumpkineater69",
      text: "I did not care for \"The godfather\".",
      image: peterPostImg,
    },
    {name: "Lois Griffin", username: "loisgryffindor", text: "What?"},
    {name: "Chris Griffin", username: "chrissy", text: "What didn't you liked about the movie"},
    {
      name: "Peter Griffin",
      username: "pumpkineater69",
      text: "\"It insists upon itself\"",
      image: peterPostImg,
    },
  ]
}

module Reddit = {
  type t = {title: string, icon: Icon.t}
  let sidelinks = [
    {title: "Home", icon: Icon.house},
    {title: "Popular", icon: Icon.arrowCircleUpRight},
    {title: "Explore", icon: Icon.usersThree},
    {title: "All", icon: Icon.chartBar},
  ]
}

module Linkedin = {
  type t = {title: string, icon: Icon.t}
  let navlinks = [
    {title: "Home", icon: Icon.house},
    {title: "My Network", icon: Icon.usersThree},
    {title: "Jobs", icon: Icon.suitcaseSimple},
    {title: "Messaging", icon: Icon.chat},
    {title: "Notifications", icon: Icon.bell},
    {title: "Me", icon: Icon.userCircle},
  ]

  let trendings = [
    "Some key takeaways by some Project manager",
    "AI related mildly interesting post",
    "more AI related mildly interesting post",
    "ever more AI related mildly interesting post",
  ]

  type post = {
    title: string,
    author: string,
    authorInfo: string,
  }

  let posts = [
    {
      title: "Key take aways from some random thing by some manager.",
      author: "Project Man the 8th",
      authorInfo: "Leader for life | Leader of leaders | MBA, MCA, MDA",
    },
    {
      title: "What I learned after getting fired - Nothing.",
      author: "Junior Tech Influencer",
      authorInfo: "AI Enthusiast | Content Creator | Crypto Bro",
    },
    {
      title: "Top 100 tricky/mysterious/nonsense javascript interview questions.",
      author: "Some HR prolly",
      authorInfo: "Rejecting talent since 1999",
    },
    {
      title: "Here are 5000+ Interview question to help you prepare.",
      author: "Sir NoCode Jr",
      authorInfo: "LinkedIn Growth Expert | Tech Leader | Tech influencer",
    },
  ]
}
