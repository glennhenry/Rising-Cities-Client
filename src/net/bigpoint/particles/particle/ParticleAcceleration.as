package net.bigpoint.particles.particle
{
   import net.bigpoint.particles.Particle;
   import net.bigpoint.particles.ParticleEmitter;
   
   public class ParticleAcceleration implements IParticleUpdater
   {
      
      private var _accelerationX:Number;
      
      private var _accelerationY:Number;
      
      public function ParticleAcceleration(param1:Number, param2:Number)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param2)))
         {
            super();
            if(!(_loc4_ && Boolean(this)))
            {
               this._accelerationX = param1;
               if(_loc3_ || Boolean(param2))
               {
                  addr0051:
                  this._accelerationY = param2;
               }
               return;
            }
         }
         §§goto(addr0051);
      }
      
      public function updateParticle(param1:ParticleEmitter, param2:Particle, param3:Number, param4:int) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(_loc6_)
         {
            §§push(param2);
            §§push(param2.vX);
            if(!_loc5_)
            {
               §§push(param3);
               if(!_loc5_)
               {
                  §§push(§§pop() * this._accelerationX);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().vX = §§pop();
            if(!(_loc5_ && Boolean(param3)))
            {
               addr005d:
               §§push(param2);
               §§push(param2.vY);
               if(_loc6_ || Boolean(param3))
               {
                  §§push(param3);
                  if(_loc6_ || Boolean(param2))
                  {
                     §§push(§§pop() * this._accelerationY);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().vY = §§pop();
            }
            return;
         }
         §§goto(addr005d);
      }
      
      public function destroy() : void
      {
      }
   }
}

