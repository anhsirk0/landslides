@react.component
let make = () => {
  Hook.useDocTitle("Home")
  let routeCards = Route.appRoutes->Array.map(item => {
    <Route.Link
      to=item.path
      key=item.path
      className="col-span-12 md:col-span-4 xl:col-span-4 xxl:col-span-3 rounded-box overflow-hidden h-16 md:h-24 cursor-pointer">
      {item.card()}
    </Route.Link>
  })

  <div className="size-full bg-gradient-to-br from-accent/20 to-secondary/20 center">
    <div className="center flex-col gap-4 h-full p-4 max-w-7xl">
      <p className="text-5xl xxl:text-7xl text-accent font-black inline-flex gap-4">
        <Icon.logo className="fill-accent" />
        {"Landslides"->React.string}
      </p>
      <p className="text-xl md:text-3xl text-base-content/80 text-center">
        {"Collection of Landing pages redesigned using DaisyUI"->React.string}
      </p>
      // <p className="text-5xl text-accent text-center md:hidden p-4">
      //   {"This site is not optimised for mobile devices"->React.string}
      // </p>
      <div className="grid grid-cols-12 gap-4 my-12 w-full"> {React.array(routeCards)} </div>
    </div>
  </div>
}
