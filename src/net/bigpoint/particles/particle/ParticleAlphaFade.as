package net.bigpoint.particles.particle
{
   import net.bigpoint.particles.Particle;
   import net.bigpoint.particles.ParticleEmitter;
   
   public class ParticleAlphaFade implements IParticleUpdater, IParticleInitializer
   {
      
      private var _startTime:Number;
      
      private var _endTime:Number;
      
      private var _startAlpha:Number;
      
      private var _endAlpha:Number;
      
      public function ParticleAlphaFade(param1:int, param2:int, param3:Number = 1, param4:Number = 0)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(_loc5_ || Boolean(param2))
         {
            super();
            if(!(_loc6_ && Boolean(param2)))
            {
               this._startTime = param1;
               if(!_loc6_)
               {
                  this._endTime = param2;
                  if(_loc5_ || Boolean(this))
                  {
                     addr0070:
                     this._startAlpha = param3;
                     if(!(_loc6_ && Boolean(param1)))
                     {
                        this._endAlpha = param4;
                     }
                  }
                  §§goto(addr008a);
               }
               §§goto(addr0070);
            }
         }
         addr008a:
      }
      
      public function updateParticle(param1:ParticleEmitter, param2:Particle, param3:Number, param4:int) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         §§push(Number(param4 - param2.birthTime - this._startTime) / Number(this._endTime - this._startTime));
         if(!(_loc6_ && Boolean(param2)))
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         if(_loc7_)
         {
            §§push(param2);
            §§push(this._startAlpha);
            if(!(_loc6_ && Boolean(param3)))
            {
               §§push(this._startAlpha);
               if(_loc7_ || Boolean(param1))
               {
                  §§push(this._endAlpha);
                  if(!(_loc6_ && Boolean(this)))
                  {
                     §§goto(addr00b0);
                  }
                  §§goto(addr00ae);
               }
               §§goto(addr00ac);
            }
            addr00b0:
            §§push(§§pop() - §§pop());
            if(_loc7_ || Boolean(param2))
            {
               addr00ae:
               addr00ac:
               §§push(§§pop() * _loc5_);
            }
            §§pop().alpha = §§pop() - §§pop();
            §§goto(addr00b3);
         }
         addr00b3:
      }
      
      public function initializeParticle(param1:ParticleEmitter, param2:Particle, param3:int) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || Boolean(param1))
         {
            if(this._startTime == 0)
            {
               if(!(_loc5_ && Boolean(param1)))
               {
                  addr0046:
                  param2.alpha = this._startAlpha;
               }
            }
            return;
         }
         §§goto(addr0046);
      }
      
      public function destroy() : void
      {
      }
   }
}

