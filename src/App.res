@react.component
let make = () => {
  let route = Route.useRoute()

  <React.Fragment>
    {switch route {
    | Home => <Home />
    | Netflix => <Netflix />
    | Spotify => <Spotify />
    | Twitter => <Twitter />
    | Youtube => <Youtube />
    | Bluesky => <Bluesky />
    | Reddit => <Reddit />
    | Google => <Google />
    | Linkedin => <Linkedin />
    | ErrorPage => <ErrorPage />
    }}
    <OptionsFab />
  </React.Fragment>
}
