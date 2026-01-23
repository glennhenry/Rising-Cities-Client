package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.vo.MysteryBuildingObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.event.ManagerEvent;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableDisplayObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IFinishAnimationManager;
   
   public class FinishAnimationManager implements IFinishAnimationManager
   {
      
      protected var _mysteryBuildingObjectVo:MysteryBuildingObjectVo;
      
      private var _billboardContainer:SmartObjectContainer;
      
      private var _animContainer:Sprite;
      
      protected var _animationAsset:*;
      
      protected var _currentSource:MovieClip;
      
      protected var _animSource:Sprite;
      
      private var _isDirty:Boolean;
      
      protected var _dimensionRect:Rectangle;
      
      public function FinishAnimationManager()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public function prepareFinishAnimationManager(param1:MysteryBuildingObjectVo, param2:SmartObjectContainer, param3:Sprite, param4:DisplayObject) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(!_loc6_)
         {
            this._mysteryBuildingObjectVo = param1;
            if(_loc5_ || Boolean(this))
            {
               this._billboardContainer = param2;
               if(_loc5_ || Boolean(param3))
               {
                  this._animContainer = param3;
                  if(!_loc6_)
                  {
                     this._animationAsset = param4;
                     if(!(_loc6_ && Boolean(this)))
                     {
                        addr0074:
                        this.invalidateFinishAnimationManager();
                     }
                  }
               }
               §§goto(addr0079);
            }
            §§goto(addr0074);
         }
         addr0079:
      }
      
      public function invalidateFinishAnimationManager() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.nullcheck("FinishAnimationManager, prepare before invalidate!");
            if(_loc2_ || Boolean(this))
            {
               this.isDirty();
               if(!(_loc1_ && _loc1_))
               {
                  addr0054:
                  if(this._isDirty)
                  {
                     if(!(_loc1_ && Boolean(this)))
                     {
                        addr0069:
                        this.redraw();
                     }
                  }
               }
               return;
            }
            §§goto(addr0054);
         }
         §§goto(addr0069);
      }
      
      protected function handlePreloadComplete(param1:*) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            (this._animationAsset as PreloadableDisplayObject).removeEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.handlePreloadComplete);
            if(!_loc3_)
            {
               addr0033:
               this.invalidateFinishAnimationManager();
            }
            return;
         }
         §§goto(addr0033);
      }
      
      protected function isDirty() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:String = null;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this._animationAsset is PreloadableDisplayObject);
            if(!_loc2_)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(_temp_3)
               {
                  if(_loc3_)
                  {
                     §§pop();
                     if(!_loc2_)
                     {
                        §§push((this._animationAsset as PreloadableDisplayObject).loadComplete);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0057:
                           §§push(!§§pop());
                           if(!_loc2_)
                           {
                              §§goto(addr005d);
                           }
                           §§goto(addr00a9);
                        }
                        §§goto(addr005d);
                     }
                     §§goto(addr010a);
                  }
                  §§goto(addr00a9);
               }
               addr005d:
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     (this._animationAsset as PreloadableDisplayObject).addEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.handlePreloadComplete);
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        return;
                     }
                     §§goto(addr010a);
                  }
                  else
                  {
                     addr00b2:
                     §§push("animation_");
                     if(_loc3_)
                     {
                        §§push(this._mysteryBuildingObjectVo);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§push(§§pop().mysteryResultFieldItemSize);
                           if(_loc3_ || Boolean(this))
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc2_)
                              {
                                 §§push(§§pop() + "_");
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    addr00fa:
                                    addr00f7:
                                    addr00f3:
                                    §§push(§§pop() + this._mysteryBuildingObjectVo.mysteryResultFieldItemSize);
                                 }
                              }
                              _loc1_ = §§pop();
                              if(_loc3_ || _loc2_)
                              {
                                 addr010a:
                                 (this._animationAsset.presentation as MovieClip).gotoAndStop(_loc1_);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr0133:
                                    this._currentSource = this._animationAsset.presentation.getChildByName("anim");
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       addr0156:
                                       this._isDirty = true;
                                    }
                                 }
                                 §§goto(addr015b);
                              }
                              §§goto(addr0133);
                           }
                           §§goto(addr00fa);
                        }
                        §§goto(addr00f7);
                     }
                     §§goto(addr00f3);
                  }
                  §§goto(addr0133);
               }
               else
               {
                  addr00a9:
                  if(this._mysteryBuildingObjectVo.unwrapProgressIsRunning)
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr00b2);
                     }
                     §§goto(addr0156);
                  }
               }
               addr015b:
               return;
            }
            §§goto(addr0057);
         }
         §§goto(addr0156);
      }
      
      private function redraw() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(this._animContainer.numChildren > 0)
         {
            this._animContainer.removeChildAt(0);
            if(!(_loc2_ || _loc2_))
            {
               break;
            }
         }
         var _loc1_:BitmapClip = this.addAnimation(new BitmapClip(this._currentSource,"finishAniamtion" + this._mysteryBuildingObjectVo.mysteryResultFieldItemSize,12));
         if(_loc2_ || Boolean(_loc1_))
         {
            this._animContainer.addChild(this._animSource);
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.play();
               if(_loc2_)
               {
                  §§push(this._billboardContainer);
                  if(!_loc3_)
                  {
                     if(§§pop() is SmartObjectContainer)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr00c8:
                           (this._billboardContainer as SmartObjectContainer).invalidate();
                           addr00c4:
                           if(_loc2_ || Boolean(this))
                           {
                              addr00dd:
                              this._isDirty = false;
                           }
                        }
                        §§goto(addr00e2);
                     }
                     §§goto(addr00dd);
                  }
                  §§goto(addr00c8);
               }
               §§goto(addr00dd);
            }
            §§goto(addr00c4);
         }
         addr00e2:
      }
      
      protected function addAnimation(param1:BitmapClip) : BitmapClip
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._animSource = new Sprite();
            if(!_loc2_)
            {
               this._animSource.addChild(param1);
               if(_loc3_)
               {
                  param1.removeAfterPlay = true;
                  if(_loc3_)
                  {
                     param1.addEventListener(Event.REMOVED,this.onFinishAnimation);
                  }
               }
            }
         }
         return param1;
      }
      
      private function nullcheck(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(this._mysteryBuildingObjectVo == null);
            if(_loc2_)
            {
               var _temp_1:* = §§pop();
               §§push(_temp_1);
               if(!_temp_1)
               {
                  if(_loc2_ || Boolean(param1))
                  {
                     addr003f:
                     §§pop();
                     if(!_loc3_)
                     {
                        §§goto(addr004b);
                     }
                     §§goto(addr0054);
                  }
               }
               addr004b:
               §§goto(addr0045);
            }
            §§goto(addr003f);
         }
         addr0045:
         if(this._billboardContainer == null)
         {
            if(!_loc3_)
            {
               addr0054:
               throw new RamaCityError(param1);
            }
         }
      }
      
      private function onFinishAnimation(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._billboardContainer.dispatchEvent(new ManagerEvent(ManagerEvent.FINISH_ANIMATION,null));
         }
      }
   }
}

