type t =
  | Home
  | Netflix
  | Spotify
  | Twitter
  | Youtube
  | Bluesky
  | Reddit
  | Google
  | Linkedin
  | ErrorPage

let useRoute: unit => t = () => {
  let url = RescriptReactRouter.useUrl()

  switch url.path {
  | list{} => Home
  | list{"netflix"} => Netflix
  | list{"spotify"} => Spotify
  | list{"twitter"} => Twitter
  | list{"youtube"} => Youtube
  | list{"bluesky"} => Bluesky
  | list{"reddit"} => Reddit
  | list{"google"} => Google
  | list{"linkedin"} => Linkedin
  | _ => ErrorPage
  }
}

module Link = {
  @react.component
  let make = (~to, ~className, ~children) => {
    let onClick = evt => {
      evt->ReactEvent.Mouse.preventDefault
      RescriptReactRouter.push(to)
    }
    <a href=to className onClick> {children} </a>
  }
}

type appRoute = {path: string, card: unit => React.element}
let appRoutes: array<appRoute> = [
  {path: "/netflix", card: () => <Netflix.Card />},
  {path: "/spotify", card: () => <Spotify.Card />},
  {path: "/twitter", card: () => <Twitter.Card />},
  {path: "/youtube", card: () => <Youtube.Card />},
  {path: "/bluesky", card: () => <Bluesky.Card />},
  {path: "/reddit", card: () => <Reddit.Card />},
  {path: "/google", card: () => <Google.Card />},
  {path: "/linkedin", card: () => <Linkedin.Card />},
]
