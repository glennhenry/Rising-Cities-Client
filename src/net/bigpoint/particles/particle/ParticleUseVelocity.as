package net.bigpoint.particles.particle
{
   import net.bigpoint.particles.Particle;
   import net.bigpoint.particles.ParticleEmitter;
   
   public class ParticleUseVelocity implements IParticleUpdater
   {
      
      public function ParticleUseVelocity()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
         }
      }
      
      public function updateParticle(param1:ParticleEmitter, param2:Particle, param3:Number, param4:int) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(!(_loc5_ && Boolean(param2)))
         {
            param2.x += param2.vX * param3;
            if(!(_loc5_ && Boolean(param3)))
            {
               addr004c:
               param2.y += param2.vY * param3;
            }
            return;
         }
         §§goto(addr004c);
      }
      
      public function destroy() : void
      {
      }
   }
}

