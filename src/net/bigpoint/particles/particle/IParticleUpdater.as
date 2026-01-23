package net.bigpoint.particles.particle
{
   import net.bigpoint.particles.Particle;
   import net.bigpoint.particles.ParticleEmitter;
   
   public interface IParticleUpdater
   {
      
      function updateParticle(param1:ParticleEmitter, param2:Particle, param3:Number, param4:int) : void;
      
      function destroy() : void;
   }
}

