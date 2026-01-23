package net.bigpoint.particles
{
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class ParticleEmitter
   {
      
      public var newParticlesPerSecond:Number;
      
      public var rest:Number = 0;
      
      public var startX:Number = 0;
      
      public var startY:Number = 0;
      
      public var startVariationX:Number = 0;
      
      public var startVariationY:Number = 0;
      
      public var startVariationWidth:Number = 0;
      
      public var startVariationHeight:Number = 0;
      
      public var blendMode:String;
      
      public var container:Sprite;
      
      public var bitmapData:BitmapData;
      
      public var lifeTime:int;
      
      public function ParticleEmitter()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public function updateParticle(param1:Particle, param2:Number, param3:int) : void
      {
      }
      
      public function initializeParticle(param1:Particle, param2:int) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            param1.emitter = this;
            if(!_loc4_)
            {
               §§push(param1);
               §§push(this.startX);
               if(!_loc4_)
               {
                  §§push(this.startVariationX);
                  if(_loc3_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc4_)
                     {
                        addr004a:
                        addr003e:
                        §§push(§§pop() + Math.random() * this.startVariationWidth);
                     }
                     §§pop().x = §§pop();
                     if(_loc3_ || Boolean(this))
                     {
                        §§push(param1);
                        §§push(this.startY);
                        if(_loc3_)
                        {
                           §§push(this.startVariationY);
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc4_)
                              {
                                 addr008a:
                                 addr007e:
                                 §§push(§§pop() + Math.random() * this.startVariationHeight);
                              }
                              §§pop().y = §§pop();
                              if(!(_loc4_ && Boolean(param2)))
                              {
                                 param1.rotation = Math.random() * 360;
                                 if(!(_loc4_ && Boolean(param2)))
                                 {
                                    param1.bitmapData = this.bitmapData;
                                    if(_loc3_)
                                    {
                                       addr00cf:
                                       param1.active = true;
                                       if(_loc3_ || Boolean(param2))
                                       {
                                          addr00e1:
                                          this.container.addChild(param1);
                                          if(_loc3_)
                                          {
                                             param1.birthTime = param2;
                                             if(!(_loc4_ && Boolean(this)))
                                             {
                                                param1.lifeTime = this.lifeTime;
                                                addr0102:
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §§goto(addr0125);
                                                }
                                             }
                                             §§goto(addr013b);
                                          }
                                          addr0125:
                                          param1.blendMode = this.blendMode;
                                          if(!(_loc4_ && Boolean(param1)))
                                          {
                                             addr013b:
                                             param1.alpha = 1;
                                          }
                                          §§goto(addr0141);
                                       }
                                       §§goto(addr0102);
                                    }
                                    §§goto(addr013b);
                                 }
                                 §§goto(addr0141);
                              }
                              §§goto(addr00e1);
                           }
                           §§goto(addr008a);
                        }
                        §§goto(addr007e);
                     }
                     §§goto(addr00cf);
                  }
                  §§goto(addr004a);
               }
               §§goto(addr003e);
            }
            addr0141:
            return;
         }
         §§goto(addr013b);
      }
   }
}

