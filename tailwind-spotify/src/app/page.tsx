import { ChevronLeft, ChevronRight, Play } from 'lucide-react';
import Image from 'next/image';
import { Sidebar } from './components/Sidebar';
import Footer from './components/Footer';

export default function Home() {
  return (
    <div className="h-screen flex flex-col">
      <div className="flex flex-1">
        <Sidebar />
        <main className="flex-1 p-6">
          <div className="flex items-center gap-3">
            <button className="rounded-full bg-black/40 p-1">
              <ChevronLeft />
            </button>
            <button className="rounded-full bg-black/40 p-1">
              <ChevronRight />
            </button>
          </div>

          <h1 className="font-semibold text-3xl mt-10">Good Afternoon</h1>

          <div className="grid grid-cols-3 gap-4 mt-4">
            <a
              href="#"
              className="bg-white/5 group rounded flex items-center gap-4 overflow-hidden hover:bg-white/10 transition-colors"
            >
              <Image width={104} height={104} src="/album.jpg" alt="album" />
              <strong>Rap do naturo</strong>
              <button className="w-12 h-12 flex items-center justify-center p-2 rounded-full bg-green-400 text-black invisible group-hover:visible">
                <Play />
              </button>
            </a>
            <a
              href="#"
              className="bg-white/5 group rounded flex items-center gap-4  overflow-hidden hover:bg-white/10 transition-colors"
            >
              <Image width={104} height={104} src="/album.jpg" alt="album" />
              <strong>Rap do naturo</strong>
              <button className="w-12 h-12 flex items-center justify-center p-2 rounded-full bg-green-400 text-blackinvisible group-hover:visible">
                <Play />
              </button>
            </a>
            <a
              href="#"
              className="bg-white/5 group rounded flex items-center gap-4  overflow-hidden hover:bg-white/10 transition-colors"
            >
              <Image width={104} height={104} src="/album.jpg" alt="album" />
              <strong>Rap do naturo</strong>
              <button className="w-12 h-12 flex items-center justify-center p-2 rounded-full bg-green-400 text-black invisible group-hover:visible">
                <Play />
              </button>
            </a>
          </div>

          <h2 className="font-semibold text-2xl mt-10">
            Made for Carolina Ribeiro
          </h2>

          <div className="grid grid-cols-8 gap-4 mt-4">
            <a
              href="#"
              className="bg-white/5 p-3 rounded-md hover:bg-white/10 flex flex-col gap-2"
            >
              <Image
                className="w-full"
                width={104}
                height={104}
                src="/album.jpg"
                alt="album"
              />
              <strong className="font-semibold">Daily Mix 1</strong>
              <span className="text-sm text-zinc-500">
                Wallows, COIN, girl in red
              </span>
            </a>

            <a
              href="#"
              className="bg-white/5 p-3 rounded-md hover:bg-white/10 flex flex-col gap-2"
            >
              <Image
                className="w-full"
                width={104}
                height={104}
                src="/album.jpg"
                alt="album"
              />
              <strong className="font-semibold">Daily Mix 1</strong>
              <span className="text-sm text-zinc-500">
                Wallows, COIN, girl in red
              </span>
            </a>

            <a
              href="#"
              className="bg-white/5 p-3 rounded-md hover:bg-white/10 flex flex-col gap-2"
            >
              <Image
                className="w-full"
                width={104}
                height={104}
                src="/album.jpg"
                alt="album"
              />
              <strong className="font-semibold">Daily Mix 1</strong>
              <span className="text-sm text-zinc-500">
                Wallows, COIN, girl in red
              </span>
            </a>

            <a
              href="#"
              className="bg-white/5 p-3 rounded-md hover:bg-white/10 flex flex-col gap-2"
            >
              <Image
                className="w-full"
                width={104}
                height={104}
                src="/album.jpg"
                alt="album"
              />
              <strong className="font-semibold">Daily Mix 1</strong>
              <span className="text-sm text-zinc-500">
                Wallows, COIN, girl in red
              </span>
            </a>
          </div>
        </main>
      </div>
      <Footer />
    </div>
  );
}
