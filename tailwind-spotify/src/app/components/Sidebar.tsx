import { HomeIcon, Library, Search } from 'lucide-react';

export function Sidebar() {
  return (
    <aside className="w-72 bg-zinc-950 p-6">
      <div className="flex items-center gap-2">
        <div className="w-3 h-3 bg-red-500 rounded-full" />
        <div className="w-3 h-3 bg-yellow-500 rounded-full" />
        <div className="w-3 h-3 bg-green-500 rounded-full" />
      </div>

      <nav className="space-y-5 mt-10">
        <a
          href=""
          className="flex items-center gap-3 text-sm font-semibold text-zinc-200"
        >
          <HomeIcon /> Home
        </a>
        <a
          href=""
          className="flex items-center gap-3 text-sm font-semibold text-zinc-200"
        >
          <Search /> Search
        </a>
        <a
          href=""
          className="flex items-center gap-3 text-sm font-semibold text-zinc-200"
        >
          <Library /> Your Library
        </a>
      </nav>

      <nav className="mt-6 pt-10 border-t border-zinc-800 flex flex-col gap-2">
        <a className="text-small hover:text-zinc-400" href="">
          🚗🎶 Playlist Kazin 🙂
        </a>
        <a className="text-small hover:text-zinc-400" href="">
          Raps de naruto
        </a>
        <a className="text-small hover:text-zinc-400" href="">
          Playlist 3
        </a>
        <a className="text-small hover:text-zinc-400" href="">
          Playlist 4
        </a>
        <a className="text-small hover:text-zinc-400" href="">
          Playlist 5
        </a>
      </nav>
    </aside>
  );
}
