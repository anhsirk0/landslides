module SideLink = {
  @react.component
  let make = (~item: Shape.Reddit.t) => {
    <li>
      <a href="#" className={item.title == "Home" ? "bg-neutral/20" : ""}>
        {React.createElement(item.icon, {className: "resp-icon"})}
        {item.title->React.string}
      </a>
    </li>
  }
}

@react.component
let make = () => {
  Hook.useDocTitle("Reddit")

  let sidelinks = Shape.Reddit.sidelinks->Array.map(item => <SideLink key=item.title item />)

  let subs = Belt.Array.range(1, 5)->Array.map(idx => {
    <li key={idx->Int.toString}>
      <a href="#">
        <div className="avatar">
          <div className="w-6 xxl:w-8 rounded-full">
            <img
              alt="user"
              src="https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp"
              className="bg-neutral"
            />
          </div>
        </div>
        {`r/Subreddit${idx->Int.toString}`->React.string}
        <Icon.star className="resp-icon" />
      </a>
    </li>
  })

  let posts = Belt.Array.range(1, 12)->Array.map(idx => {
    <React.Fragment>
      <div className="divider" />
      <div
        key={idx->Int.toString}
        className="flex flex-col gap-3 rounded-box p-3 xl:p-4 hover:bg-base-200 transitional w-full -my-1">
        <div className="flex flex-col">
          <div className="flex gap-2 xxl:gap-4 items-center">
            <div className="avatar">
              <div className="size-8 rounded-full">
                <img
                  alt="user"
                  src="https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp"
                  className="bg-neutral/50"
                />
              </div>
            </div>
            <p className="text-xs xl:text-sm xxl:text-base text-base-content/80 font-bold">
              {"r/Subreddit"->React.string}
            </p>
            <p className="font-normal text-base-content/60 xxl:-ml-2">
              {"• 1 hour ago"->React.string}
            </p>
            <button className="btn btn-ghost btn-circle ml-auto -mr-4">
              <Icon.dotsThree className="resp-icon" />
            </button>
          </div>
          <p className="resp-title -mt-1">
            {`Title of the post ${idx->Int.toString}`->React.string}
          </p>
        </div>
        <img
          className="rounded-box bg-neutral w-full h-[340px]"
          src={`https://picsum.photos/seed/${(idx * 10)->Int.toString}/400/340`}
        />
        <div className="flex gap-2 xxl:gap-4">
          <div className="rounded-btn bg-neutral flex gap-2 cursor-default p-0">
            <button className="btn btn-square btn-neutral hover:text-success">
              <Icon.arrowUp className="resp-icon" />
            </button>
            <p className="my-auto text-neutral-content">
              {`${idx->Int.toString}0K`->React.string}
            </p>
            <button className="btn btn-square btn-neutral hover:text-error">
              <Icon.arrowDown className="resp-icon" />
            </button>
          </div>
          <button className="btn btn-neutral ">
            <Icon.chat className="resp-icon" />
            <p className="my-auto"> {`${idx->Int.toString}K`->React.string} </p>
          </button>
          <button className="btn btn-neutral ">
            <Icon.shareFat className="resp-icon" />
            <p className="my-auto"> {`share`->React.string} </p>
          </button>
        </div>
      </div>
    </React.Fragment>
  })

  <div className="drawer lg:drawer-open min-h-0 h-full">
    <input id="reddit-drawer" type_="checkbox" className="drawer-toggle" />
    <div className="drawer-content flex flex-col min-h-0 h-full p-2">
      <div
        className="sticky lg:fixed lg:z-10 lg:inset-0 top-0 h-16 w-full bg-base-100 flex items-center p-2 border-b border-base-content/20">
        <label htmlFor="reddit-drawer" className="btn btn-ghost drawer-button">
          <Icon.redditLogo className="size-8" />
        </label>
        <p className="hidden lg:block font-black"> {"Reddit"->React.string} </p>
        <div className="grow" />
        <div className="flex resp-gap hidden sm:flex w-1/2 xxl:w-1/3">
          <label className="input bg-neutral/20 flex items-center gap-2 grow rounded-full">
            <Icon.magnifyingGlass className="resp-icon" />
            <input className="grow" placeholder="Search reddit" />
          </label>
        </div>
        <div className="grow" />
        <button className="btn btn-ghost">
          <Icon.chatCircleDots className="resp-icon" />
        </button>
        <button className="btn btn-ghost">
          <Icon.plus className="resp-icon" />
          {"Create"->React.string}
        </button>
        <button className="btn btn-square btn-ghost resp-btn relative">
          <Icon.bell className="size-6" />
        </button>
        <div className="avatar ml-6 xxl:mr-6">
          <div className="w-8 xxl:w-12 rounded-full">
            <img src="https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp" />
          </div>
        </div>
      </div>
      <div className="flex gap-4 size-full min-h-0 relative mt-2 lg:mt-16 max-w-5xl mx-auto">
        <div className="flex flex-col grow items-end h-full overflow-y-auto px-4">
          <div className="flex w-full pt-2">
            <button className="btn btn-sm btn-ghost">
              {"Best"->React.string}
              <Icon.caretDown className="size-4" />
            </button>
            <button className="btn btn-sm btn-ghost">
              <Icon.squareSplitVertical className="size-6" />
              <Icon.caretDown className="size-4" />
            </button>
          </div>
          {posts->React.array}
        </div>
        <div
          id="todo-recent-items"
          className="flex flex-col hidden lg:flex w-96 h-full rounded-box p-4"
        />
        // <div className="flex flex-col hidden lg:flex w-96 bg-base-300 h-full rounded-box p-4">
        //   <div
        //     className="flex justify-between text-base-content/60 text-xs md:text-sm xxl:text-base">
        //     {"Recent posts"->React.string}
        //     <button className="link link-hover text-info/60"> {"Clear"->React.string} </button>
        //   </div>
        // </div>
      </div>
    </div>
    <div className="drawer-side isolate lg:pt-16">
      <label htmlFor="reddit-drawer" ariaLabel="close sidebar" className="drawer-overlay" />
      <div className="h-full lg:p-2 border-r border-base-content/20">
        <div className="flex flex-col lg:rounded-box bg-base-100 h-full">
          <ul className="menu menu-sm xxl:menu-lg"> {sidelinks->React.array} </ul>
          <div className="divider -my-1" />
          <button className="btn btn-ghost resp-btn justify-between -mb-2">
            <p className="ml-2 xxl:ml-4"> {"COMMUNITIES"->React.string} </p>
            <Icon.caretUp className="size-4" />
          </button>
          <ul className="menu menu-sm xxl:menu-lg w-56 xxl:w-72">
            <li>
              <a href="#">
                <Icon.plus className="resp-icon" />
                {"Create"->React.string}
              </a>
            </li>
            {subs->React.array}
          </ul>
        </div>
      </div>
    </div>
  </div>
}
