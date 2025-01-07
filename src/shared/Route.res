type t =
  | Home
  | Netflix
  | Spotify
  | Twitter
  | Youtube

let useRoute: unit => t = () => {
  let url = RescriptReactRouter.useUrl()

  switch url.path {
  | list{"netflix"} => Netflix
  | list{"spotify"} => Spotify
  | list{"twitter"} => Twitter
  | list{"youtube"} => Youtube
  | _ => Home
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
  {
    path: "/netflix",
    card: () => <NetflixCard />,
  },
  {
    path: "/spotify",
    card: () => <SpotifyCard />,
  },
  {
    path: "/twitter",
    card: () => <TwitterCard />,
  },
  {
    path: "/youtube",
    card: () => <YoutubeCard />,
  },
]
