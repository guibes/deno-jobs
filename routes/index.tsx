import { Head } from "$fresh/runtime.ts";
import { HeadElement } from "../components/Head.tsx";
import { PageProps } from "$fresh/server.ts";
import { Navbar } from "../components/Navbar.tsx";




export default function Home(ctx: PageProps) {
  const { url } = ctx;
  const appName = Deno.env.get('APP_NAME') || 'DenoJobs';
  
  return (
    <>
      <HeadElement
        description={appName}
        image={url.href + "og-image.png"}
        title={appName}
        url={url}
      />
        <Navbar></Navbar>
      <div>
        
      </div>
    </>
  );
}
