@react.component
let make = () => {
  let route = Route.useRoute()

  <React.Fragment>
    {switch route {
    | Netflix => <Netflix />
    | Spotify => <Spotify />
    | Twitter => <Twitter />
    | Youtube => <Youtube />
    | Bluesky => <Bluesky />
    | Home => <Home />
    }}
    <OptionsFab />
  </React.Fragment>
}
