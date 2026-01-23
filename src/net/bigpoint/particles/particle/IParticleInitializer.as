package net.bigpoint.particles.particle
{
   import net.bigpoint.particles.Particle;
   import net.bigpoint.particles.ParticleEmitter;
   
   public interface IParticleInitializer
   {
      
      function initializeParticle(param1:ParticleEmitter, param2:Particle, param3:int) : void;
      
      function destroy() : void;
   }
}

