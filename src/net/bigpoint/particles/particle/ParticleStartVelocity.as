package net.bigpoint.particles.particle
{
   import flash.geom.Point;
   import net.bigpoint.particles.Particle;
   import net.bigpoint.particles.ParticleEmitter;
   
   public class ParticleStartVelocity implements IParticleInitializer
   {
      
      public var offsetX:Number = 0;
      
      public var offsetY:Number = 0;
      
      private var _minAngle:int;
      
      private var _maxAngle:int;
      
      private var _startVel:Number;
      
      private var _secondsRunning:Number;
      
      public function ParticleStartVelocity(param1:Number = 1, param2:int = 0, param3:int = 360, param4:Number = 0)
      {
         super();
         this._startVel = param1;
         this._minAngle = param2;
         if(param3 < param2)
         {
            this._maxAngle = param3 + 360;
         }
         else
         {
            this._maxAngle = param3;
         }
         this._secondsRunning = param4;
      }
      
      public static function getCircleCoordinate(param1:Number, param2:Number, param3:Point = null) : Point
      {
         var _loc4_:Point = new Point();
         if(param3 == null)
         {
            param3 = new Point(0,0);
         }
         _loc4_.x = Math.cos(param1) * param2 + param3.x;
         _loc4_.y = Math.sin(param1) * param2 + param3.y;
         return _loc4_;
      }
      
      public static function deg2rad(param1:Number) : Number
      {
         return param1 * (Math.PI / 180);
      }
      
      public function initializeParticle(param1:ParticleEmitter, param2:Particle, param3:int) : void
      {
         var _loc4_:Number = deg2rad(Math.random() * (this._maxAngle - this._minAngle) + this._minAngle);
         var _loc5_:Point = getCircleCoordinate(_loc4_,this._startVel);
         param2.vX = _loc5_.x;
         param2.vY = _loc5_.y;
         param2.x = param2.x + this.offsetX + _loc5_.x * this._secondsRunning;
         param2.y = param2.y + this.offsetY + _loc5_.y * this._secondsRunning;
      }
      
      public function destroy() : void
      {
      }
      
      public function rad2deg(param1:Number) : Number
      {
         return param1 * (180 / Math.PI);
      }
   }
}

