import {
  IconBrandGoogleFilled,
  IconBrandAppleFilled,
} from "@tabler/icons-react";
import XLogo from "./XLogo";

const X = () => {
  return (
    <div className="w-full h-full flex flex-col lg:flex-row gap-2">
      <div className="lg:center lg:w-1/2 p-4">
        <XLogo className="fill-base-content size-12 lg:size-96" />
      </div>
      <div className="center lg:w-1/2 p-4">
        <div className="flex flex-col gap-8 lg:w-4/5">
          <h1 className="text-7xl font-bold">Happening now</h1>
          <div className="flex flex-col gap-2 self-start">
            <p className="text-3xl font-bold my-4">Join today.</p>
            <button className="btn btn-neutral">
              <IconBrandGoogleFilled />
              Sign up with Google
            </button>
            <button className="btn btn-neutral">
              <IconBrandAppleFilled />
              Sign up with Apple
            </button>
            <div className="divider">or</div>
            <button className="btn btn-primary">Create account</button>
            <p className="text-xs text-base-content/50">
              By signing up, you agree to the Terms of Service and Privacy
              Policy,
              <br />
              including Cookie Use.
            </p>

            <p className="text-lg mt-20">Already have an account?</p>
            <button className="btn btn-primary btn-outline">Sign in</button>
          </div>
        </div>
      </div>
    </div>
  );
};

export default X;
