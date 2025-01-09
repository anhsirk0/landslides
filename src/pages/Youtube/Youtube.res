module SideLink = {
  @react.component
  let make = (~item: Shape.Youtube.t) => {
    <li>
      <a href="#" className={item.title == "Home" ? "bg-base-300" : ""}>
        {React.createElement(item.icon, {className: "resp-icon"})}
        {item.title->React.string}
      </a>
    </li>
  }
}

@react.component
let make = () => {
  Hook.useDocTitle("Youtube")

  let sidelinks = Shape.Youtube.sidelinks->Array.map(item => <SideLink key=item.title item />)
  let youlinks = Shape.Youtube.youlinks->Array.map(item => <SideLink key=item.title item />)
  let subs = Belt.Array.range(1, 5)->Array.map(idx => {
    <li key={idx->Int.toString}>
      <a href="#">
        {idx == 5
          ? <Icon.caretDown className="resp-icon mr-2" />
          : <div className="avatar">
              <div className="w-6 xxl:w-8 rounded-full">
                <img
                  alt="user"
                  src="https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp"
                  className="bg-neutral"
                />
              </div>
            </div>}
        {(idx == 5 ? "Show more" : `Channel ${idx->Int.toString}`)->React.string}
        {idx < 4 ? <span className="bg-secondary size-2 rounded-full ml-auto" /> : React.null}
      </a>
    </li>
  })

  let videos = Belt.Array.range(1, 12)->Array.map(idx => {
    <div
      key={idx->Int.toString}
      className="col-span-12 md:col-span-6 lg:col-span-4 xl:col-span-3 flex flex-col gap-3 rounded-box p-3 xl:p-4 hover:bg-base-200 transitional">
      <img
        // alt={"video-" ++ idx->Int.toString}
        // width="400"
        // height="240"
        className="rounded-box bg-neutral w-full h-[240px]"
        src={`https://picsum.photos/seed/${(idx * 10)->Int.toString}/400/240`}
      />
      <div className="flex gap-2 xxl:gap-4">
        <div className="avatar">
          <div className="size-8 xxl:size-12 rounded-full">
            <img
              alt="user"
              src="https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp"
              className="bg-neutral/50"
            />
          </div>
        </div>
        <div className="flex flex-col grow ">
          <p className="resp-title -mt-1">
            {`Clickbait title ${idx->Int.toString}`->React.string}
          </p>
          <p className="text-xs xl:text-sm xxl:text-base text-base-content/80">
            {"Channel"->React.string}
          </p>
          <p className="text-xs xl:text-sm xxl:text-base text-base-content/80 -mt-1">
            {"1B views • 1 hour ago"->React.string}
          </p>
        </div>
      </div>
    </div>
  })

  <div className="drawer lg:drawer-open min-h-0 h-full">
    <input id="yt-drawer" type_="checkbox" className="drawer-toggle" />
    <div className="drawer-content flex flex-col min-h-0 isolate">
      <div className="sticky top-0 z-10 flex resp-gap items-center px-2 bg-base-100 h-12 lg:h-auto">
        <div className="flex items-center gap-2 lg:hidden">
          <label htmlFor="yt-drawer" className="btn btn-square btn-ghost resp-btn drawer-button">
            <Icon.menu className="resp-icon" />
          </label>
          <Icon.youtube className="size-8 lg:size-10 text-primary" weight="fill" />
          <h1 className="resp-text font-bold"> {"YouTube"->React.string} </h1>
        </div>
        <div className="grow" />
        <div className="hidden lg:flex join items-center self-center py-2 px-4 xxl:px-16 w-1/2">
          <label
            id="search"
            className="input input-bordered input-sm xxl:input-md flex items-center join-item grow">
            <input placeholder="Search" className="grow" />
          </label>
          <button
            className="btn btn-sm xxl:btn-md join-item no-animation border border-base-content/20">
            <Icon.magnifyingGlass className="resp-icon" />
          </button>
        </div>
        <div className="flex items-center w-1/4 justify-end">
          <button className="btn btn-sm xxl:btn-md">
            <Icon.plus className="resp-icon" />
            {"Create"->React.string}
          </button>
          <button className="btn btn-square btn-ghost resp-btn relative">
            <Icon.bell className="size-6" />
            <span
              className="size-2 xxl:size-3 rounded-full bg-primary absolute right-0.5 top-0 xxl:right-2 xxl:top-2"
            />
          </button>
          <div className="avatar ml-6 xxl:mr-6">
            <div className="w-8 xxl:w-12 rounded-full">
              <img
                src="https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp"
              />
            </div>
          </div>
        </div>
      </div>
      <div className="grid grid-cols-12 w-full grow min-h-0 overflow-y-auto">
        {videos->React.array}
      </div>
    </div>
    <div className="drawer-side isolate">
      <label htmlFor="yt-drawer" ariaLabel="close sidebar" className="drawer-overlay" />
      <div className="flex flex-col h-full w-64 bg-base-100">
        <div className="flex items-center w-full gap-2">
          <label htmlFor="yt-drawer" className="btn btn-square btn-ghost resp-btn drawer-button">
            <Icon.menu className="resp-icon" />
          </label>
          <Icon.youtube className="size-8 lg:size-10 text-primary" weight="fill" />
          <h1 className="resp-text font-bold"> {"YouTube"->React.string} </h1>
        </div>
        <ul className="menu menu-sm xxl:menu-lg"> {sidelinks->React.array} </ul>
        <div className="divider -my-1" />
        <button className="btn btn-ghost resp-btn justify-start -mb-2">
          <p className="ml-2 xxl:ml-4"> {"You"->React.string} </p>
          <Icon.caretRight className="size-4" />
        </button>
        <ul className="menu menu-sm xxl:menu-lg"> {youlinks->React.array} </ul>
        <div className="divider -my-1" />
        <button className="btn btn-ghost resp-btn justify-start -mb-2">
          <p className="ml-2 xxl:ml-4"> {"Subscriptions"->React.string} </p>
        </button>
        <ul className="menu menu-sm xxl:menu-lg"> {subs->React.array} </ul>
      </div>
    </div>
  </div>
}
