package net.bigpoint.particles.particle
{
   import net.bigpoint.particles.Particle;
   import net.bigpoint.particles.ParticleEmitter;
   
   public class ParticleRotation implements IParticleInitializer, IParticleUpdater
   {
      
      private var _hasRandomStartRotation:Boolean;
      
      private var _rotationSpeed:int;
      
      public function ParticleRotation(param1:int, param2:Boolean = true)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super();
            if(!_loc3_)
            {
               this._hasRandomStartRotation = param2;
               if(!_loc3_)
               {
                  addr002d:
                  this._rotationSpeed = param1;
               }
               §§goto(addr0033);
            }
            §§goto(addr002d);
         }
         addr0033:
      }
      
      public function updateParticle(param1:ParticleEmitter, param2:Particle, param3:Number, param4:int) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(!_loc5_)
         {
            param2.rotation += this._rotationSpeed * param3;
         }
      }
      
      public function initializeParticle(param1:ParticleEmitter, param2:Particle, param3:int) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!(_loc5_ && Boolean(param3)))
         {
            if(this._hasRandomStartRotation)
            {
               if(_loc4_ || Boolean(param3))
               {
                  addr0047:
                  param2.rotation = Math.random() * 360;
               }
            }
            return;
         }
         §§goto(addr0047);
      }
      
      public function destroy() : void
      {
      }
   }
}

