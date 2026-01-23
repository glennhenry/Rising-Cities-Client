package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import com.greensock.TweenMax;
   import flash.display.DisplayObject;
   import flash.filters.GlowFilter;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.field.vo.ClientFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IHighlightManager;
   import net.bigpoint.field3d.interfaces.IMatrixObject3dVo;
   
   public class HighlightManagerClientObjects implements IHighlightManager
   {
      
      private static const RESET_TINT:uint = 0;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         RESET_TINT = 0;
      }
      
      private var _dataVo:ClientFieldObjectVo;
      
      private var _target:DisplayObject;
      
      private var _isDirty:Boolean;
      
      private var _lastState:String;
      
      private var _selectedFilter:String;
      
      private var _selectedTint:uint;
      
      private var _filterDic:Dictionary;
      
      private const ACTIVE_COLOR:uint = 16777215;
      
      private var _isVisible:Boolean;
      
      private var _lastApplicationMode:String;
      
      private var _lastTint:uint;
      
      public function HighlightManagerClientObjects()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public function prepareHighlightManager(param1:IMatrixObject3dVo, param2:DisplayObject) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            this._dataVo = param1 as ClientFieldObjectVo;
            if(_loc3_)
            {
               this._target = param2;
               if(!(_loc4_ && Boolean(this)))
               {
                  addr0049:
                  this._filterDic = new Dictionary();
                  if(_loc3_)
                  {
                     this._filterDic["active"] = new GlowFilter(this.ACTIVE_COLOR,1,6,6,100,1);
                     §§goto(addr0057);
                  }
                  §§goto(addr00a5);
               }
               addr0057:
               if(_loc3_ || Boolean(param1))
               {
                  addr0091:
                  this._selectedTint = RESET_TINT;
                  if(_loc3_ || Boolean(this))
                  {
                     addr00a5:
                     this._lastTint = RESET_TINT;
                  }
               }
               return;
            }
            §§goto(addr0091);
         }
         §§goto(addr0049);
      }
      
      public function invalidateHighlightManager(param1:String, param2:Boolean = true) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            this.nullCheck("HighlightManager, prepare before invalidate!");
            if(_loc4_ || Boolean(param1))
            {
               this.checkForState(param1);
               if(_loc4_ || Boolean(param1))
               {
                  this.checkVisibility(param2);
               }
            }
         }
         §§push(this.checkTint(param2));
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && param2))
         {
            §§push(this._isDirty);
            if(!(_loc5_ && _loc3_))
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     §§push(this._isVisible);
                     if(!(_loc5_ && _loc3_))
                     {
                        addr00a3:
                        if(§§pop())
                        {
                           if(_loc4_)
                           {
                              addr00ad:
                              this.setGlow(this._filterDic[this._selectedFilter]);
                              if(_loc4_)
                              {
                                 addr00c7:
                                 if(_loc3_)
                                 {
                                    if(_loc4_ || Boolean(this))
                                    {
                                       addr00d9:
                                       this.setTint(this._selectedTint);
                                       if(_loc5_ && Boolean(param1))
                                       {
                                          addr0115:
                                          this.setTint(0);
                                          if(_loc4_)
                                          {
                                             addr0123:
                                             this._isDirty = false;
                                          }
                                          §§goto(addr0128);
                                       }
                                       §§goto(addr0123);
                                    }
                                    §§goto(addr0128);
                                 }
                              }
                              §§goto(addr0123);
                           }
                           §§goto(addr00d9);
                        }
                        else
                        {
                           this.hideGlow();
                           if(_loc4_ || _loc3_)
                           {
                              §§goto(addr0115);
                           }
                        }
                        §§goto(addr0123);
                     }
                     §§goto(addr00c7);
                  }
                  §§goto(addr00ad);
               }
               addr0128:
               return;
            }
            §§goto(addr00a3);
         }
         §§goto(addr0123);
      }
      
      private function setGlow(param1:GlowFilter) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._target.filters = [param1];
         }
      }
      
      private function setTint(param1:uint) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._lastTint = param1;
            if(_loc3_ || _loc3_)
            {
               addr0041:
               if(param1 == RESET_TINT)
               {
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     TweenMax.to(this._target,0,{"colorTransform":{
                        "tint":param1,
                        "tintAmount":0
                     }});
                     if(_loc2_)
                     {
                     }
                  }
               }
               else
               {
                  TweenMax.to(this._target,0,{"colorTransform":{
                     "tint":param1,
                     "tintAmount":0.5
                  }});
               }
            }
            return;
         }
         §§goto(addr0041);
      }
      
      private function hideGlow() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            this._target.filters = [];
         }
      }
      
      private function checkTint(param1:Boolean) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(this._selectedTint == this._lastTint);
         if(_loc3_ || Boolean(this))
         {
            return !§§pop();
         }
      }
      
      private function checkForState(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || _loc3_)
         {
            if(this._lastState == param1)
            {
               if(_loc4_ || _loc3_)
               {
                  return;
               }
            }
            this._isDirty = true;
            if(!(_loc3_ && Boolean(param1)))
            {
               addr0066:
               this._lastState = param1;
            }
            var _loc2_:* = param1;
            if(_loc4_)
            {
               if(ApplicationModeProxy.MODE_NORMAL === _loc2_)
               {
                  addr00d0:
                  §§push(0);
                  if(_loc3_ && _loc3_)
                  {
                  }
               }
               else
               {
                  §§push(1);
               }
               switch(§§pop())
               {
                  case 0:
                     this._selectedFilter = "active";
                     if(_loc4_ || _loc3_)
                     {
                        this._selectedTint = RESET_TINT;
                        if(!(_loc4_ || _loc3_))
                        {
                           break;
                        }
                     }
                     this._lastApplicationMode = param1;
                     if(_loc3_)
                     {
                     }
               }
               return;
            }
            §§goto(addr00d0);
         }
         §§goto(addr0066);
      }
      
      private function nullCheck(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            §§push(this._dataVo == null);
            if(_loc3_)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(!_temp_3)
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§pop();
                     if(_loc3_)
                     {
                        addr005e:
                        if(this._target == null)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              throw new RamaCityError(param1);
                           }
                        }
                     }
                     §§goto(addr0078);
                  }
               }
            }
            §§goto(addr005e);
         }
         addr0078:
      }
      
      private function checkVisibility(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(this._isVisible == param1)
            {
               if(!(_loc3_ && param1))
               {
                  return;
               }
               addr0066:
               this._isVisible = param1;
            }
            else
            {
               this._isDirty = true;
               if(!(_loc3_ && param1))
               {
                  §§goto(addr0066);
               }
            }
         }
      }
   }
}

