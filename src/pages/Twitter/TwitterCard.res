@react.component
let make = () => {
  <div
    className="w-full h-full bg-base-content center p-4 xxl:p-6 text-base-100 text-3xl font-bold">
    <Icon.twitter className="size-12 mr-2 fill-base-100" />
    {"Twitter"->React.string}
  </div>
}
