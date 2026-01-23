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
         super();
         this._hasRandomStartRotation = param2;
         this._rotationSpeed = param1;
      }
      
      public function updateParticle(param1:ParticleEmitter, param2:Particle, param3:Number, param4:int) : void
      {
         param2.rotation += this._rotationSpeed * param3;
      }
      
      public function initializeParticle(param1:ParticleEmitter, param2:Particle, param3:int) : void
      {
         if(this._hasRandomStartRotation)
         {
            param2.rotation = Math.random() * 360;
         }
      }
      
      public function destroy() : void
      {
      }
   }
}

