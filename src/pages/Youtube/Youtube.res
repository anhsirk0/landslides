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
      className="col-span-12 md:col-span-6 lg:col-span-3 xl:col-span-3 flex flex-col gap-3 rounded-box p-3 xl:p-4 hover:bg-base-200 transitional">
      <img
        // alt={"video-" ++ idx->Int.toString}
        width="400"
        height="240"
        className="rounded-box bg-neutral"
        src={`https://picsum.photos/seed/${(idx * 10)->Int.toString}/400/240`}
      />
      <div className="flex gap-2 xxl:gap-4">
        <div className="avatar">
          <div className="size-8 xxl:size-12 rounded-full">
            <img
              alt="user"
              src="https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp"
              className="bg-neutral"
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

  <div className="size-full flex flex-col min-h-0">
    <div className="flex resp-gap items-center px-2">
      <div className="flex items-center w-1/4 gap-2">
        <button className="btn btn-square btn-ghost resp-btn">
          <Icon.menu className="resp-icon" />
        </button>
        <Icon.youtube className="size-8 lg:size-10 text-primary" weight="fill" />
        <h1 className="resp-text font-bold"> {"YouTube"->React.string} </h1>
      </div>
      <div className="join items-center self-center py-2 px-4 xxl:px-16 w-1/2">
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
            <img src="https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp" />
          </div>
        </div>
      </div>
    </div>
    <div className="flex h-full grow min-h-0">
      <div className="flex flex-col h-full w-64">
        <ul className="menu menu-sm xxl:menu-lg"> {sidelinks->React.array} </ul>
        <div className="divider" />
        <button className="btn btn-ghost resp-btn justify-start -mb-2">
          <p className="ml-2 xxl:ml-4"> {"You"->React.string} </p>
          <Icon.caretRight className="size-4" />
        </button>
        <ul className="menu menu-sm xxl:menu-lg"> {youlinks->React.array} </ul>
        <div className="divider" />
        <button className="btn btn-ghost resp-btn justify-start -mb-2">
          <p className="ml-2 xxl:ml-4"> {"Subscriptions"->React.string} </p>
        </button>
        <ul className="menu menu-sm xxl:menu-lg"> {subs->React.array} </ul>
      </div>
      <div className="grid grid-cols-12 grow w-full min-h-0 overflow-y-auto">
        {videos->React.array}
      </div>
    </div>
  </div>
}
