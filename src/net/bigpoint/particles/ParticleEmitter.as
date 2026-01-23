package net.bigpoint.particles
{
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class ParticleEmitter
   {
      
      public var newParticlesPerSecond:Number;
      
      public var rest:Number = 0;
      
      public var startX:Number = 0;
      
      public var startY:Number = 0;
      
      public var startVariationX:Number = 0;
      
      public var startVariationY:Number = 0;
      
      public var startVariationWidth:Number = 0;
      
      public var startVariationHeight:Number = 0;
      
      public var blendMode:String;
      
      public var container:Sprite;
      
      public var bitmapData:BitmapData;
      
      public var lifeTime:int;
      
      public function ParticleEmitter()
      {
         super();
      }
      
      public function updateParticle(param1:Particle, param2:Number, param3:int) : void
      {
      }
      
      public function initializeParticle(param1:Particle, param2:int) : void
      {
         param1.emitter = this;
         param1.x = this.startX + this.startVariationX + Math.random() * this.startVariationWidth;
         param1.y = this.startY + this.startVariationY + Math.random() * this.startVariationHeight;
         param1.rotation = Math.random() * 360;
         param1.bitmapData = this.bitmapData;
         param1.active = true;
         this.container.addChild(param1);
         param1.birthTime = param2;
         param1.lifeTime = this.lifeTime;
         param1.blendMode = this.blendMode;
         param1.alpha = 1;
      }
   }
}

