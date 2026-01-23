package net.bigpoint.particles.particle
{
   import net.bigpoint.particles.Particle;
   import net.bigpoint.particles.ParticleEmitter;
   
   public class ParticleUseVelocity implements IParticleUpdater
   {
      
      public function ParticleUseVelocity()
      {
         super();
      }
      
      public function updateParticle(param1:ParticleEmitter, param2:Particle, param3:Number, param4:int) : void
      {
         param2.x += param2.vX * param3;
         param2.y += param2.vY * param3;
      }
      
      public function destroy() : void
      {
      }
   }
}

