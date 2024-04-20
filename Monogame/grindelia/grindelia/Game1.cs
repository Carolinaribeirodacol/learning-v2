using grindelia.Graphics;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace grindelia;

public class Game1 : Game
{
    private GraphicsDeviceManager _graphics;
    private SpriteBatch _spriteBatch;

    private const string GROUND_SPRITESHEET = "grounds";
    private const string PLAYER_WALK_SPRITESHEET = "walk-spritesheet";

    private Texture2D _playerWalkSpriteSheetTexture;

    public Game1()
    {
        _graphics = new GraphicsDeviceManager(this);
        Content.RootDirectory = "Content";
        IsMouseVisible = true;
    }

    protected override void Initialize()
    {
        // TODO: Add your initialization logic here

        base.Initialize();
    }

    protected override void LoadContent()
    {
        _spriteBatch = new SpriteBatch(GraphicsDevice);

        // TODO: use this.Content to load your game content here
        _playerWalkSpriteSheetTexture = Content.Load<Texture2D>(PLAYER_WALK_SPRITESHEET);
    }

    protected override void Update(GameTime gameTime)
    {
        if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Escape))
            Exit();

        // TODO: Add your update logic here

        base.Update(gameTime);
    }

    protected override void Draw(GameTime gameTime)
    {
        GraphicsDevice.Clear(Color.CornflowerBlue);

        // TODO: Add your drawing code here

        _spriteBatch.Begin();

        Sprite playerWalkSprite = new Sprite(_playerWalkSpriteSheetTexture, 0, 0, 16, 32);

        playerWalkSprite.Draw(_spriteBatch, new Vector2(20,20));

        _spriteBatch.End();

        base.Draw(gameTime);
    }
}
