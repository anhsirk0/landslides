@react.component
let make = () => {
  <div
    className="fixed bottom-[1vh] right-[1vh] max-w-[3rem] max-h-[3rem] rounded-box hover:max-h-[98vh] hover:max-w-[16rem] overflow-hidden group flex flex-col transitional">
    <div
      className="w-56 h-[98vh] bg-accent text-accent-content rounded-box flex flex-col max-h-[3rem] group-hover:max-h-[100%] transitional min-h-0">
      <div className="grow h-full [&>*]:hidden group-hover:[&>*]:flex min-h-0">
        <ThemeList />
      </div>
      <div className="h-[3rem] w-[3rem] shrink-0 flex flex-row group-hover:w-full overflow-hidden">
        <div className="size-[3rem] shrink-0 center">
          <Icon.palette className="size-[2rem]" />
        </div>
        <div className="h-[3rem] center ml-auto mr-2">
          <Route.Link
            to="/" className="btn btn-primary btn-sm h-[2rem] w-full border border-accent-content">
            <Icon.house className="resp-icon" />
            {"Home"->React.string}
          </Route.Link>
        </div>
      </div>
    </div>
  </div>
}
