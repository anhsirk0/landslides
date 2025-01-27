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
    | Reddit => <Reddit />
    | Home => <Home />
    }}
    <OptionsFab />
  </React.Fragment>
}
