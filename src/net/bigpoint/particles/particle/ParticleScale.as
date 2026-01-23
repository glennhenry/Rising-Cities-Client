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
         super();
         this._scaleXYMin = param1;
         this._scaleXYRange = param2 - param1;
      }
      
      public function initializeParticle(param1:ParticleEmitter, param2:Particle, param3:int) : void
      {
         if(this._scaleXYRange == 0)
         {
            param2.scaleX = param2.scaleY = this._scaleXYMin;
         }
         else
         {
            param2.scaleX = param2.scaleY = Math.random() * this._scaleXYRange + this._scaleXYMin;
         }
      }
      
      public function destroy() : void
      {
      }
   }
}

