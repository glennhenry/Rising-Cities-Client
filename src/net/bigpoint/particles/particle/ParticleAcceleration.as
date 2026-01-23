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
         super();
         this._accelerationX = param1;
         this._accelerationY = param2;
      }
      
      public function updateParticle(param1:ParticleEmitter, param2:Particle, param3:Number, param4:int) : void
      {
         param2.vX += param3 * this._accelerationX;
         param2.vY += param3 * this._accelerationY;
      }
      
      public function destroy() : void
      {
      }
   }
}

