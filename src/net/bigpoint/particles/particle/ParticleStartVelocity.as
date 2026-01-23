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
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(!_loc5_)
         {
            super();
            if(_loc6_)
            {
               this._startVel = param1;
               if(_loc6_)
               {
                  this._minAngle = param2;
                  if(!_loc5_)
                  {
                     if(param3 < param2)
                     {
                        if(_loc6_)
                        {
                           this._maxAngle = param3 + 360;
                           addr0053:
                           if(_loc6_ || Boolean(this))
                           {
                           }
                        }
                        addr008e:
                        this._secondsRunning = param4;
                     }
                     else
                     {
                        this._maxAngle = param3;
                        if(_loc6_ || Boolean(param1))
                        {
                           §§goto(addr008e);
                        }
                     }
                  }
                  §§goto(addr0094);
               }
               §§goto(addr008e);
            }
            addr0094:
            return;
         }
         §§goto(addr0053);
      }
      
      public static function getCircleCoordinate(param1:Number, param2:Number, param3:Point = null) : Point
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:Point = new Point();
         if(_loc6_ || Boolean(param2))
         {
            if(param3 == null)
            {
               if(_loc6_ || Boolean(param3))
               {
                  addr004c:
                  param3 = new Point(0,0);
                  §§goto(addr0062);
               }
               §§goto(addr0079);
            }
            addr0062:
            _loc4_.x = Math.cos(param1) * param2 + param3.x;
            if(_loc6_)
            {
               addr0079:
               _loc4_.y = Math.sin(param1) * param2 + param3.y;
            }
            return _loc4_;
         }
         §§goto(addr004c);
      }
      
      public static function deg2rad(param1:Number) : Number
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(param1);
         if(_loc3_)
         {
            return §§pop() * (Math.PI / 180);
         }
      }
      
      public function initializeParticle(param1:ParticleEmitter, param2:Particle, param3:int) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         §§push(§§findproperty(deg2rad));
         §§push(Math.random() * (this._maxAngle - this._minAngle));
         if(!(_loc7_ && Boolean(param3)))
         {
            §§push(§§pop() + this._minAngle);
         }
         §§push(§§pop().deg2rad(§§pop()));
         if(_loc6_ || Boolean(this))
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:Point = getCircleCoordinate(_loc4_,this._startVel);
         if(!_loc7_)
         {
            param2.vX = _loc5_.x;
            if(!_loc7_)
            {
               addr0081:
               param2.vY = _loc5_.y;
               if(_loc6_ || Boolean(this))
               {
                  param2.x = param2.x + this.offsetX + _loc5_.x * this._secondsRunning;
                  if(!_loc7_)
                  {
                     param2.y = param2.y + this.offsetY + _loc5_.y * this._secondsRunning;
                  }
               }
            }
            return;
         }
         §§goto(addr0081);
      }
      
      public function destroy() : void
      {
      }
      
      public function rad2deg(param1:Number) : Number
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(param1);
         if(!_loc2_)
         {
            return §§pop() * (180 / Math.PI);
         }
      }
   }
}

