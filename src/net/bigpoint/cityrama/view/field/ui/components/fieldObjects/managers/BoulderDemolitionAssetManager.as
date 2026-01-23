package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.vo.BoulderObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableDisplayObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBoulderDemolitionAssetManager;
   import net.bigpoint.util.RenderHelper;
   
   public class BoulderDemolitionAssetManager implements IBoulderDemolitionAssetManager
   {
      
      private var _data:BoulderObjectVo;
      
      private var _target:DisplayObjectContainer;
      
      private var _source:*;
      
      private var _currentAsset:DisplayObjectContainer;
      
      private var _dimensionRect:Rectangle;
      
      private var _assetsLoaded:Boolean;
      
      private var _currentlyInDemolition:Boolean;
      
      public function BoulderDemolitionAssetManager()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
         }
      }
      
      public function prepare(param1:BoulderObjectVo = null, param2:DisplayObjectContainer = null, param3:* = null) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || Boolean(this))
         {
            this._data = param1;
            if(_loc4_)
            {
               addr003b:
               this._target = param2;
               if(_loc4_ || Boolean(this))
               {
                  §§goto(addr004e);
               }
               §§goto(addr0059);
            }
            addr004e:
            this._source = param3;
            if(_loc4_)
            {
               addr0059:
               this.loadAsset();
            }
            return;
         }
         §§goto(addr003b);
      }
      
      public function invalidate() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.nullcheck("BoulderDemolitionAssetManager, prepare before invalidate!");
            if(_loc2_ || _loc2_)
            {
               if(this._data.isInDemolitionMode != this._currentlyInDemolition)
               {
                  if(_loc2_)
                  {
                     addr004b:
                     this.chooseAsset();
                  }
               }
               §§goto(addr0051);
            }
            §§goto(addr004b);
         }
         addr0051:
      }
      
      private function loadAsset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this._source is PreloadableDisplayObject);
            if(_loc2_)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(_temp_3)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     §§goto(addr0047);
                  }
               }
               §§goto(addr0078);
            }
            addr0047:
            §§pop();
            if(!(_loc1_ && _loc1_))
            {
               addr0078:
               §§push((this._source as PreloadableDisplayObject).loadComplete);
               if(_loc2_ || Boolean(this))
               {
                  §§push(!§§pop());
               }
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr0081:
                     (this._source as PreloadableDisplayObject).addEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.handlePreloadComplete);
                     if(!_loc2_)
                     {
                        addr00ab:
                        this.chooseAsset();
                     }
                  }
               }
               else
               {
                  this._assetsLoaded = true;
                  if(!_loc1_)
                  {
                     §§goto(addr00ab);
                  }
               }
            }
            return;
         }
         §§goto(addr0081);
      }
      
      private function chooseAsset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._assetsLoaded);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr002f:
                     if(this._data.isInDemolitionMode)
                     {
                        if(_loc1_)
                        {
                           addr0038:
                           (this._source.presentation as MovieClip).gotoAndStop("demolition_2_" + this._data.configPlayfieldItemVo.gfxId);
                           if(_loc1_)
                           {
                              this._currentlyInDemolition = true;
                              if(_loc1_ || Boolean(this))
                              {
                              }
                              this._currentAsset = this._source.presentation.getChildAt(1);
                              addr00ae:
                              if(!_loc2_)
                              {
                                 addr00d0:
                                 this._dimensionRect = this._source.presentation.getChildAt(1).getBounds(this._source.presentation);
                                 if(_loc1_)
                                 {
                                    addr00f4:
                                    this.setAsset();
                                 }
                              }
                              §§goto(addr00fa);
                           }
                           §§goto(addr00f4);
                        }
                        §§goto(addr00fa);
                     }
                     else
                     {
                        (this._source.presentation as MovieClip).gotoAndStop("id" + this._data.configPlayfieldItemVo.gfxId);
                        if(_loc1_)
                        {
                           this._currentlyInDemolition = false;
                           if(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr00ae);
                           }
                           §§goto(addr00d0);
                        }
                     }
                     §§goto(addr00f4);
                  }
                  §§goto(addr0038);
               }
               addr00fa:
               return;
            }
            §§goto(addr002f);
         }
         §§goto(addr00ae);
      }
      
      private function setAsset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         do
         {
            if(this._target.numChildren <= 0)
            {
               if(_loc1_ || _loc2_)
               {
                  this._target.addChild(RenderHelper.getRendered(this._currentAsset,this._dimensionRect));
                  if(!(_loc2_ && _loc2_))
                  {
                     if(this._target is SmartObjectContainer)
                     {
                        if(_loc1_ || _loc2_)
                        {
                           break;
                        }
                     }
                  }
               }
               §§goto(addr00a5);
            }
            this._target.removeChildAt(0);
         }
         while(_loc1_ || _loc1_);
         
         (this._target as SmartObjectContainer).invalidate();
         addr00a5:
      }
      
      private function handlePreloadComplete(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            (this._source as PreloadableDisplayObject).removeEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.handlePreloadComplete);
            if(!(_loc3_ && Boolean(this)))
            {
               addr0045:
               this.loadAsset();
            }
            return;
         }
         §§goto(addr0045);
      }
      
      private function nullcheck(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(this._data == null);
            if(_loc2_ || _loc2_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(!_temp_2)
               {
                  if(!_loc3_)
                  {
                     §§pop();
                     if(_loc2_)
                     {
                        §§goto(addr004e);
                     }
                     §§goto(addr0057);
                  }
               }
            }
            addr004e:
            if(this._target == null)
            {
               if(!_loc3_)
               {
                  addr0057:
                  throw new RamaCityError(param1);
               }
            }
            §§goto(addr0060);
         }
         addr0060:
      }
   }
}

