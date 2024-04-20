using Microsoft.Xna.Framework.Graphics;
using Color = Microsoft.Xna.Framework.Color;
using Rectangle = Microsoft.Xna.Framework.Rectangle;
using Vector2 = Microsoft.Xna.Framework.Vector2;

namespace TrexRunner.Graphics
{
    internal class Sprite
    {
        public Texture2D Texture { get; private set; }

        public int X {  get; set; }
        public int Y {  get; set; }

        public int Width {  get; set; }
        public int Height {  get; set; }

        public Color TintColor { get; set; } = Color.White;

        public Sprite(Texture2D texture, int x, int y, int width, int height)
        {
            Texture = texture;
            X = x;
            Y = y;
            Width = width;
            Height = height;
        }
        public void Draw(SpriteBatch spriteBatch, Vector2 position)
        {
            spriteBatch.Draw(Texture, position, new Rectangle(X, Y, Width, Height), TintColor);
        }
    }
}
