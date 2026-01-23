package net.bigpoint.cityrama.view.field.ui.components.fieldObjects
{
   import flash.display.Sprite;
   import flash.events.Event;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.urbies.vo.AnimationConditionsVo;
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeVo;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IGameObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IUrbieObject;
   import net.bigpoint.cityrama.view.field.ui.components.strategy.DirectionStrategy;
   import net.bigpoint.cityrama.view.field.ui.components.strategy.FramesetStrategy;
   import net.bigpoint.field3d.interfaces.IObject3D;
   import net.bigpoint.field3d.objects.SpriteMatrixObject3d;
   import net.bigpoint.util.RandomUtilities;
   
   public class UrbieObject extends SpriteMatrixObject3d implements IObject3D, IUrbieObject, IGameObject
   {
      
      protected var _directionStrategy:DirectionStrategy;
      
      protected var _assetReady:Boolean = true;
      
      private var _animationStartConditions:Vector.<AnimationConditionsVo>;
      
      private var _framesetStrategy:FramesetStrategy;
      
      private var _listenerObject:Object;
      
      public function UrbieObject(param1:Sprite, param2:UrbieLifeVo)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(!_loc6_)
         {
            this._listenerObject = {};
            if(!(_loc6_ && Boolean(this)))
            {
               super(param1,param2);
               if(_loc5_ || Boolean(this))
               {
                  param1.mouseChildren = param1.mouseEnabled = false;
                  if(!_loc6_)
                  {
                     usePreciseValues = true;
                     if(!(_loc6_ && _loc3_))
                     {
                        addr006c:
                        this._directionStrategy = new DirectionStrategy();
                        if(_loc5_)
                        {
                           addr007d:
                           this._directionStrategy.addEventListener(Event.CHANGE,this.handleDirectionChange);
                        }
                     }
                     var _loc3_:Sprite = new Sprite();
                     if(_loc5_ || Boolean(_loc3_))
                     {
                        param1.addChild(_loc3_);
                        if(!_loc6_)
                        {
                           this._framesetStrategy = new FramesetStrategy(_loc3_,this.urbieLifeVo.config);
                           if(!_loc6_)
                           {
                              this._animationStartConditions = new Vector.<AnimationConditionsVo>();
                              if(_loc5_ || Boolean(param2))
                              {
                                 addr00f2:
                                 param1.x = param2.offset.x;
                                 if(_loc5_)
                                 {
                                    param1.y = param2.offset.y;
                                    if(!(_loc6_ && Boolean(this)))
                                    {
                                       addr0118:
                                       if(param2.icon)
                                       {
                                          if(_loc5_ || Boolean(param1))
                                          {
                                             param2.icon.addEventListener(Event.COMPLETE,this.handleComplete);
                                             if(_loc5_ || Boolean(this))
                                             {
                                                addr014c:
                                                param1.addChild(param2.icon);
                                                if(_loc5_ || Boolean(this))
                                                {
                                                   addr0163:
                                                   §§push(this.urbieLifeVo);
                                                   if(_loc5_)
                                                   {
                                                      §§pop().icon.x = -0.5 * this.urbieLifeVo.icon.width;
                                                      if(_loc5_ || Boolean(this))
                                                      {
                                                         §§goto(addr019c);
                                                      }
                                                      §§goto(addr01b3);
                                                   }
                                                   addr019c:
                                                   this.urbieLifeVo.icon.y = -15 - this.urbieLifeVo.icon.height;
                                                   if(_loc5_)
                                                   {
                                                      addr01b3:
                                                      param2.icon.visible = false;
                                                      if(_loc5_)
                                                      {
                                                         addr01c0:
                                                         this.container.visible = false;
                                                      }
                                                   }
                                                   §§goto(addr01c7);
                                                }
                                                §§goto(addr01b3);
                                             }
                                             §§goto(addr01c7);
                                          }
                                          §§goto(addr01b3);
                                       }
                                       §§goto(addr01c0);
                                    }
                                    §§goto(addr0163);
                                 }
                                 §§goto(addr0118);
                              }
                              §§goto(addr014c);
                           }
                           §§goto(addr01c7);
                        }
                        §§goto(addr00f2);
                     }
                     addr01c7:
                     return;
                  }
                  §§goto(addr006c);
               }
               §§goto(addr007d);
            }
         }
         §§goto(addr006c);
      }
      
      private function handleDirectionChange(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._framesetStrategy.playFrameset(this._directionStrategy.direction);
         }
      }
      
      private function handleComplete(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this.urbieLifeVo);
            if(!_loc3_)
            {
               §§pop().icon.removeEventListener(Event.COMPLETE,this.handleComplete);
               if(!(_loc3_ && Boolean(this)))
               {
                  §§push(this.urbieLifeVo);
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     §§pop().icon.x = -0.5 * this.urbieLifeVo.icon.width;
                     if(_loc2_)
                     {
                        addr0082:
                        this.urbieLifeVo.icon.y = -15 - this.urbieLifeVo.icon.height;
                        addr007e:
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr0082);
               }
               §§goto(addr007e);
            }
            §§goto(addr0082);
         }
         addr0093:
      }
      
      public function get urbieLifeVo() : UrbieLifeVo
      {
         return this._data as UrbieLifeVo;
      }
      
      public function get gameObjectVo() : IGameObjectVo
      {
         return this._data as IGameObjectVo;
      }
      
      public function onDataChanged(param1:Event) : void
      {
      }
      
      public function destroy() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this._directionStrategy.removeEventListener(Event.CHANGE,this.handleDirectionChange);
            if(_loc1_)
            {
               §§push(this.urbieLifeVo);
               if(_loc1_ || _loc1_)
               {
                  if(§§pop().icon)
                  {
                     if(!_loc2_)
                     {
                        §§push(this.urbieLifeVo);
                        if(_loc1_)
                        {
                           addr0051:
                           §§pop().icon.removeEventListener(Event.COMPLETE,this.handleComplete);
                           if(!(_loc2_ && _loc1_))
                           {
                              addr0077:
                              this.removeAllListeners();
                              if(_loc1_)
                              {
                                 addr0081:
                                 this._framesetStrategy.destroy();
                                 if(_loc1_)
                                 {
                                    §§push(this.urbieLifeVo);
                                    if(_loc1_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc1_ || Boolean(this))
                                          {
                                             addr00ac:
                                             addr00a8:
                                             if(this.urbieLifeVo.icon)
                                             {
                                                if(!_loc2_)
                                                {
                                                   RandomUtilities.cleanRemoveChild(this.urbieLifeVo.icon);
                                                   if(_loc1_ || Boolean(this))
                                                   {
                                                      addr00dd:
                                                      this._directionStrategy = null;
                                                      if(_loc1_ || _loc1_)
                                                      {
                                                         addr00ef:
                                                         this._presentation = null;
                                                      }
                                                   }
                                                   §§goto(addr00f4);
                                                }
                                             }
                                             §§goto(addr00dd);
                                          }
                                          §§goto(addr00ef);
                                       }
                                       addr00f4:
                                       return;
                                    }
                                    §§goto(addr00ac);
                                 }
                              }
                           }
                           §§goto(addr00a8);
                        }
                        §§goto(addr00ac);
                     }
                     §§goto(addr00a8);
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0051);
            }
            §§goto(addr0081);
         }
         §§goto(addr0077);
      }
      
      public function get animationStartConditions() : Vector.<AnimationConditionsVo>
      {
         return this._animationStartConditions;
      }
      
      public function set animationStartConditions(param1:Vector.<AnimationConditionsVo>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._animationStartConditions = param1;
         }
      }
      
      public function get framesetStrategy() : FramesetStrategy
      {
         return this._framesetStrategy;
      }
      
      public function get directionStrategy() : DirectionStrategy
      {
         return this._directionStrategy;
      }
      
      public function get assetReady() : Boolean
      {
         return this._assetReady;
      }
      
      public function set assetReady(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._assetReady = param1;
         }
      }
      
      override public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(_loc6_)
         {
            this._listenerObject[param1] = param2;
            if(!(_loc7_ && Boolean(param2)))
            {
               super.addEventListener(param1,param2,param3,param4,param5);
            }
         }
      }
      
      public function removeAllListeners() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:String = null;
         var _loc3_:* = this._listenerObject;
         for(_loc1_ in _loc3_)
         {
            if(_loc5_)
            {
               this.removeEventListener(_loc1_,this._listenerObject[_loc1_]);
               if(!(_loc4_ && _loc3_))
               {
                  this._listenerObject[_loc1_] = null;
                  if(_loc4_)
                  {
                     continue;
                  }
               }
            }
            delete this._listenerObject[_loc1_];
         }
      }
      
      override public function invalidatePosition() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.invalidatePosition();
            if(_loc2_)
            {
               this.container.visible = this.container.y > 0 && this.container.x != 0;
               addr002a:
            }
            return;
         }
         §§goto(addr002a);
      }
   }
}

