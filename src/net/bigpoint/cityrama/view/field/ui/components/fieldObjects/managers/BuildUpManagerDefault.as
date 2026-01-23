package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.DisplayObjectContainer;
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.constants.ServerRestrictionConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableDisplayObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManager;
   import net.bigpoint.util.RenderHelper;
   
   public class BuildUpManagerDefault implements IBuildUpManager
   {
      
      private var _data:BillboardObjectVo;
      
      private var _target:DisplayObjectContainer;
      
      private var _source:*;
      
      private var _currentSource:DisplayObjectContainer;
      
      private var _dirty:Boolean;
      
      private var _dimensionRect:Rectangle;
      
      public function BuildUpManagerDefault()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public function prepare(param1:BillboardObjectVo = null, param2:DisplayObjectContainer = null, param3:DisplayObjectContainer = null) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || Boolean(param1))
         {
            this._data = param1;
            if(_loc4_)
            {
               this._target = param2;
               if(!_loc5_)
               {
                  addr0046:
                  this._source = param3;
                  if(!(_loc5_ && Boolean(param2)))
                  {
                     this.invalidate();
                  }
               }
            }
            return;
         }
         §§goto(addr0046);
      }
      
      private function handlePreloadComplete(param1:*) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            (this._source as PreloadableDisplayObject).removeEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.handlePreloadComplete);
            if(_loc2_)
            {
               addr0030:
               this.invalidate();
            }
            return;
         }
         §§goto(addr0030);
      }
      
      public function invalidate(param1:String = "", param2:Boolean = true) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param1)))
         {
            this.nullcheck("BuildUpManagerDefault, prepare before invalidate!");
            if(!_loc4_)
            {
               this.isDirty();
               if(_loc3_ || param2)
               {
                  if(this._dirty)
                  {
                     if(_loc3_)
                     {
                        addr005d:
                        this.redraw();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005d);
      }
      
      private function isDirty() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            §§push(this._source is PreloadableDisplayObject);
            if(!_loc1_)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(_temp_3)
               {
                  if(!_loc1_)
                  {
                     §§pop();
                     if(_loc2_ || Boolean(this))
                     {
                        addr00ab:
                        §§push((this._source as PreloadableDisplayObject).loadComplete);
                        if(_loc2_ || Boolean(this))
                        {
                           §§push(!§§pop());
                           if(_loc2_ || _loc2_)
                           {
                              addr0069:
                              if(§§pop())
                              {
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr0084:
                                    (this._source as PreloadableDisplayObject).addEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.handlePreloadComplete);
                                    if(!_loc1_)
                                    {
                                       return;
                                    }
                                 }
                              }
                              §§push(this._data.useConstructionAsset);
                           }
                        }
                        if(§§pop())
                        {
                           if(_loc2_ || _loc1_)
                           {
                              this._source.presentation.gotoAndStop(this.targetFrame);
                              if(!_loc1_)
                              {
                                 this._dimensionRect = this._source.presentation.getChildAt(1).getBounds(this._source.presentation);
                                 if(_loc2_ || _loc1_)
                                 {
                                    addr0107:
                                    this._currentSource = this._source.presentation.getChildAt(1);
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr0127:
                                       this._dirty = true;
                                    }
                                 }
                                 §§goto(addr012c);
                              }
                              §§goto(addr0127);
                           }
                           §§goto(addr0107);
                        }
                     }
                     addr012c:
                     return;
                  }
               }
               §§goto(addr0069);
            }
            §§goto(addr00ab);
         }
         §§goto(addr0084);
      }
      
      private function get targetFrame() : String
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:String = null;
         var _loc2_:int = 0;
         var _loc3_:* = this._data.configPlayfieldItemVo.tags;
         while(true)
         {
            if(!(§§hasnext(_loc3_,_loc2_)))
            {
               §§push("cs_");
               if(_loc4_)
               {
                  §§push(this._data);
                  if(!_loc5_)
                  {
                     §§push(§§pop() + §§pop().currentBuildAsset);
                     if(!_loc5_)
                     {
                        §§push("_");
                        if(_loc4_ || _loc3_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc5_)
                           {
                              §§push(this._data);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() + §§pop().configPlayfieldItemVo.sizeX);
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§goto(addr0287);
                                 }
                                 §§goto(addr0296);
                              }
                              §§goto(addr029a);
                           }
                           §§goto(addr0296);
                        }
                        addr0287:
                     }
                     §§goto(addr02a1);
                  }
                  §§goto(addr029a);
               }
               addr02a1:
               §§push(§§pop() + "_");
               if(!(_loc5_ && Boolean(_loc2_)))
               {
                  addr0296:
                  addr029a:
                  return §§pop() + this._data.configPlayfieldItemVo.sizeY;
               }
            }
         }
         §§push("cs_COAST_");
         if(_loc4_ || Boolean(_loc1_))
         {
            §§goto(addr019e);
         }
         §§goto(addr020b);
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
                  if(_loc2_ && Boolean(this))
                  {
                     break;
                  }
                  this._dimensionRect = new Rectangle();
                  if(_loc1_ || _loc2_)
                  {
                     this._target.addChild(RenderHelper.getRendered(this._currentSource,this._dimensionRect));
                     addr006e:
                     if(_loc1_)
                     {
                        if(this._target is SmartObjectContainer)
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           addr00a6:
                           (this._target as SmartObjectContainer).invalidate();
                           if(_loc2_)
                           {
                              break;
                           }
                        }
                        this._dirty = false;
                        break;
                     }
                  }
                  §§goto(addr00a6);
               }
               §§goto(addr006e);
            }
            §§goto(addr00a6);
         }
         while(this._target.removeChildAt(0), _loc1_);
         
      }
      
      private function nullcheck(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(this._data == null);
            if(_loc3_ || Boolean(param1))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(!_temp_3)
               {
                  if(!_loc2_)
                  {
                     §§pop();
                     if(!_loc2_)
                     {
                        addr0056:
                        if(this._target == null)
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              §§goto(addr0067);
                           }
                        }
                     }
                     return;
                  }
               }
            }
            §§goto(addr0056);
         }
         addr0067:
         throw new RamaCityError(param1);
      }
   }
}

