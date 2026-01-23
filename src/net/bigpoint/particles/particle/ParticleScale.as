package net.bigpoint.particles.particle
{
   import net.bigpoint.particles.Particle;
   import net.bigpoint.particles.ParticleEmitter;
   
   public class ParticleScale implements IParticleInitializer
   {
      
      private var _scaleXYMin:Number;
      
      private var _scaleXYRange:Number;
      
      public function ParticleScale(param1:Number, param2:Number)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || _loc3_)
         {
            super();
            if(!(_loc3_ && Boolean(this)))
            {
               this._scaleXYMin = param1;
               if(!_loc3_)
               {
                  addr0048:
                  §§push(this);
                  §§push(param2);
                  if(!_loc3_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop()._scaleXYRange = §§pop();
               }
               return;
            }
         }
         §§goto(addr0048);
      }
      
      public function initializeParticle(param1:ParticleEmitter, param2:Particle, param3:int) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(_loc5_ || Boolean(param2))
         {
            if(this._scaleXYRange == 0)
            {
               if(!_loc6_)
               {
                  §§push(param2);
                  §§push(param2);
                  var _temp_2:* = this._scaleXYMin;
                  §§pop().scaleX = §§pop().scaleY = this._scaleXYMin;
                  if(_loc6_ && Boolean(this))
                  {
                  }
               }
            }
            else
            {
               §§push(param2);
               §§push(param2);
               §§push(Math.random() * this._scaleXYRange);
               if(_loc5_)
               {
                  §§push(this._scaleXYMin);
                  if(_loc5_ || Boolean(this))
                  {
                     addr0097:
                     var _temp_5:* = §§pop() + §§pop();
                     §§push(_temp_5);
                     §§push(_temp_5);
                  }
                  var _loc4_:* = §§pop();
                  §§pop().scaleY = §§pop();
                  §§pop().scaleX = _loc4_;
                  §§goto(addr00a4);
               }
               §§goto(addr0097);
            }
         }
         addr00a4:
      }
      
      public function destroy() : void
      {
      }
   }
}

