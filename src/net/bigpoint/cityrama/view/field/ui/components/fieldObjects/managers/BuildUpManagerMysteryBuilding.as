package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.MysteryBuildingObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableDisplayObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManager;
   import net.bigpoint.util.RenderHelper;
   
   public class BuildUpManagerMysteryBuilding implements IBuildUpManager
   {
      
      private var _data:BillboardObjectVo;
      
      private var _target:DisplayObjectContainer;
      
      private var _source:*;
      
      private var _currentSource:DisplayObjectContainer;
      
      private var _dirty:Boolean;
      
      private var _dimensionRect:Rectangle;
      
      public function BuildUpManagerMysteryBuilding()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public function prepare(param1:BillboardObjectVo = null, param2:DisplayObjectContainer = null, param3:DisplayObjectContainer = null) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            this._data = param1;
            if(_loc5_ || Boolean(param2))
            {
               this._target = param2;
               if(_loc5_)
               {
                  §§goto(addr0046);
               }
               §§goto(addr0065);
            }
            addr0046:
            this._source = param3;
            if(_loc5_ || Boolean(param3))
            {
               addr0065:
               this._data.addEventListener(MysteryBuildingObjectVo.EVENT_CONSTRUCTION_TERM_CHANGED,this.onTermChanged);
               if(_loc5_ || Boolean(param2))
               {
                  addr0085:
                  this.invalidate();
               }
            }
            return;
         }
         §§goto(addr0085);
      }
      
      private function onTermChanged(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            param1.stopPropagation();
            if(!(_loc3_ && Boolean(param1)))
            {
               if(!this._data.isInBaseMode)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     this.dirtyCheck();
                  }
               }
            }
         }
      }
      
      private function handlePreloadComplete(param1:*) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && param1))
         {
            (this._source as PreloadableDisplayObject).removeEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.handlePreloadComplete);
            if(!(_loc3_ && Boolean(this)))
            {
               addr004d:
               this.invalidate();
            }
            return;
         }
         §§goto(addr004d);
      }
      
      public function invalidate(param1:String = "", param2:Boolean = true) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            this.nullcheck("BuildUpManagerDefault, prepare before invalidate!");
            if(!_loc4_)
            {
               (this._data as MysteryBuildingObjectVo).startConstructionTime();
               if(_loc3_ || param2)
               {
                  addr0050:
                  this.dirtyCheck();
               }
               return;
            }
         }
         §§goto(addr0050);
      }
      
      private function dirtyCheck() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            this.isDirty();
            if(_loc2_ || _loc2_)
            {
               if(this._dirty)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr0050:
                     this.redraw();
                  }
               }
               §§goto(addr0056);
            }
            §§goto(addr0050);
         }
         addr0056:
      }
      
      private function isDirty() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._source is PreloadableDisplayObject);
            if(_loc2_ || _loc1_)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               §§push(_temp_3);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        §§pop();
                        if(_loc2_)
                        {
                           §§push((this._source as PreloadableDisplayObject).loadComplete);
                           if(!(_loc1_ && Boolean(this)))
                           {
                              §§push(!§§pop());
                              if(!(_loc1_ && _loc2_))
                              {
                                 addr0066:
                                 if(§§pop())
                                 {
                                    if(_loc2_)
                                    {
                                       (this._source as PreloadableDisplayObject).addEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.handlePreloadComplete);
                                       if(_loc2_)
                                       {
                                          return;
                                       }
                                    }
                                    else
                                    {
                                       addr0146:
                                       (this._source.presentation as MovieClip).gotoAndStop(this.targetFrame);
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          this._dimensionRect = this._source.presentation.getChildAt(1).getBounds(this._source.presentation);
                                          addr0167:
                                          if(_loc2_)
                                          {
                                             addr0194:
                                             this._currentSource = this._source.presentation.getChildAt(1);
                                             if(!(_loc1_ && Boolean(this)))
                                             {
                                                addr01b4:
                                                this._dirty = true;
                                             }
                                          }
                                          §§goto(addr01b9);
                                       }
                                       §§goto(addr0194);
                                    }
                                 }
                                 else
                                 {
                                    §§push(this._data);
                                    if(_loc2_)
                                    {
                                       §§push(§§pop().useConstructionAsset);
                                       if(_loc2_ || _loc1_)
                                       {
                                          §§push(§§pop());
                                          if(!_loc1_)
                                          {
                                             var _temp_9:* = §§pop();
                                             §§push(_temp_9);
                                             §§push(_temp_9);
                                             if(_loc2_)
                                             {
                                                addr00bc:
                                                if(§§pop())
                                                {
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      addr00d7:
                                                      §§pop();
                                                      if(!(_loc1_ && _loc2_))
                                                      {
                                                         §§push(this._data);
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            addr00f6:
                                                            §§push(§§pop().isHarvestReady);
                                                            if(!_loc1_)
                                                            {
                                                               addr00fe:
                                                               §§push(!§§pop());
                                                               if(!(_loc1_ && Boolean(this)))
                                                               {
                                                                  addr010c:
                                                                  var _temp_14:* = §§pop();
                                                                  addr010d:
                                                                  §§push(_temp_14);
                                                                  if(_temp_14)
                                                                  {
                                                                     if(_loc2_ || _loc1_)
                                                                     {
                                                                        §§pop();
                                                                        if(!_loc1_)
                                                                        {
                                                                           §§goto(addr013d);
                                                                        }
                                                                        §§goto(addr0167);
                                                                     }
                                                                  }
                                                                  addr013d:
                                                                  §§goto(addr0128);
                                                               }
                                                            }
                                                            §§goto(addr013c);
                                                         }
                                                         addr0128:
                                                         §§goto(addr0124);
                                                      }
                                                      addr0124:
                                                      §§push((this._data as MysteryBuildingObjectVo).unwrapProgressIsRunning);
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         addr013c:
                                                         §§push(!§§pop());
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            §§goto(addr0146);
                                                         }
                                                         §§goto(addr01b4);
                                                      }
                                                      §§goto(addr01b9);
                                                   }
                                                   §§goto(addr013d);
                                                }
                                                §§goto(addr010c);
                                             }
                                             §§goto(addr010d);
                                          }
                                          §§goto(addr013d);
                                       }
                                       §§goto(addr00fe);
                                    }
                                    §§goto(addr00f6);
                                 }
                                 §§goto(addr01b9);
                              }
                           }
                           §§goto(addr00d7);
                        }
                        addr01b9:
                        return;
                     }
                     §§goto(addr00d7);
                  }
                  §§goto(addr0066);
               }
               §§goto(addr00bc);
            }
            §§goto(addr00d7);
         }
         §§goto(addr0167);
      }
      
      private function get targetFrame() : int
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._data);
            if(_loc1_)
            {
               §§push((§§pop() as MysteryBuildingObjectVo).constructionTerm);
               if(_loc1_ || _loc1_)
               {
                  if(§§pop() == 0)
                  {
                     if(_loc1_ || Boolean(this))
                     {
                        return 1;
                     }
                  }
                  addr0056:
                  addr0052:
                  return (this._data as MysteryBuildingObjectVo).constructionTerm;
               }
            }
            §§goto(addr0056);
         }
         §§goto(addr0052);
      }
      
      private function redraw() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         do
         {
            if(this._target.numChildren > 0)
            {
               continue;
            }
            if(_loc1_)
            {
               if(this._dimensionRect == null)
               {
                  if(_loc1_ || _loc1_)
                  {
                     this._dimensionRect = new Rectangle();
                     if(!_loc2_)
                     {
                        break;
                     }
                     addr00ae:
                     (this._target as SmartObjectContainer).invalidate();
                     if(!(_loc2_ && _loc2_))
                     {
                        addr00c7:
                        this._dirty = false;
                     }
                  }
                  §§goto(addr00cc);
               }
               break;
            }
            if(this._target is SmartObjectContainer)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  §§goto(addr00ae);
               }
            }
            §§goto(addr00c7);
         }
         while(this._target.removeChildAt(0), _loc1_ || Boolean(this));
         
         this._target.addChild(RenderHelper.getRendered(this._currentSource,this._dimensionRect));
         if(_loc1_)
         {
            §§goto(addr008b);
         }
         addr00cc:
      }
      
      private function nullcheck(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(this._data == null);
            if(!(_loc2_ && _loc3_))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(!_temp_3)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     §§pop();
                     if(!_loc2_)
                     {
                        addr0060:
                        if(this._target == null)
                        {
                           if(_loc3_ || Boolean(param1))
                           {
                              §§goto(addr0071);
                           }
                        }
                     }
                     return;
                  }
               }
            }
            §§goto(addr0060);
         }
         addr0071:
         throw new RamaCityError(param1);
      }
   }
}

