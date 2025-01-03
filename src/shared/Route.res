type t =
  | Home
  | Netflix
  | Spotify
  | Twitter

let useRoute: unit => t = () => {
  let url = RescriptReactRouter.useUrl()

  switch url.path {
  | list{"netflix"} => Netflix
  | list{"spotify"} => Spotify
  | list{"twitter"} => Twitter
  | _ => Home
  }
}

module Link = {
  @react.component
  let make = (~to, ~className, ~children) => {
    let onClick = _ => RescriptReactRouter.push(to)
    <div className onClick> {children} </div>
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
]
