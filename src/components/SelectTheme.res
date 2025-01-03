@react.component
let make = () => {
  let (currentTheme, setCurrrentTheme) = React.useState(_ => Utils.getTheme())

  React.useEffect0(() => {
    currentTheme->Utils.setTheme
    None
  })

  React.useEffectOnEveryRender(() => {
    setCurrrentTheme(_ => Utils.getTheme())
    None
  })

  let onChange = theme => {
    theme->Utils.setTheme
    setCurrrentTheme(_ => theme)
  }

  let themeCards = Array.map(Theme.themes, theme =>
    <ThemeCard theme onChange key=theme>
      {theme->React.string}
      <div className="flex flex-row gap-1 rounded-btn [&>div]:h-6 [&>div]:w-2">
        <div className="bg-primary" />
        <div className="bg-accent" />
        <div className="bg-secondary" />
        <div className="bg-neutral" />
      </div>
      {currentTheme == theme
        ? <Icon.sparkle className="size-5 absolute top-0.5 left-0.5 animate-grow" />
        : React.null}
    </ThemeCard>
  )

  <div className="dropdown dropdown-top dropdown-end">
    <div
      role="button"
      tabIndex={0}
      className="btn btn-sm xxl:btn-md xxl:px-3 btn-primary option-btn xxl:text-xl">
      {"Theme"->React.string}
      <Icon.palette className="resp-icon" />
    </div>
    <ul
      className="dropdown-content z-[1] flex flex-col gap-2 p-4 bg-accent rounded-box h-[82vh] min-h-0 overflow-y-auto mb-6 w-56 shadow-xl">
      {React.array(themeCards)}
    </ul>
  </div>
}
