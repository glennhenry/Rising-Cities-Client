package net.bigpoint.cityrama.view.field.ui.components.buildings
{
   import flash.display.DisplayObjectContainer;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.vo.CitySquareFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.SpecialFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.EstablishedManagerCitySquare;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.IconStateCitySquareManager;
   
   public class CitySquareFieldObject extends SpecialFieldObject
   {
      
      private var _billboardContainerAdded:Boolean;
      
      public function CitySquareFieldObject(param1:BillboardAssetsReferenceHolder, param2:SpecialFieldObjectVo)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function invalidateEstablishedManager() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            _establishedManager.invalidate();
            if(_loc1_)
            {
               §§goto(addr002b);
            }
            §§goto(addr0040);
         }
         addr002b:
         if(_basementViewManager != null)
         {
            if(!(_loc2_ && Boolean(this)))
            {
               addr0040:
               invalidateBasementViewManager(true);
            }
         }
      }
      
      override public function prepareEstablishedManager() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            if(_establishedManager == null)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  if(_hitzoneAssistant == null)
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        throw new RamaCityError("Please instantiate _hitzoneAssistant first");
                        addr0047:
                     }
                  }
                  else
                  {
                     addr0069:
                     if(!this._billboardContainerAdded)
                     {
                        if(_loc1_)
                        {
                           this._billboardContainerAdded = true;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addContainer(_billbordObjectContainer);
                              if(_loc1_)
                              {
                                 addr00a3:
                                 _establishedManager = new EstablishedManagerCitySquare();
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr00bd:
                                    _establishedManager.prepare(billboardObjectVo,_billbordObjectContainer,_assetCollection.mainAsset);
                                 }
                              }
                           }
                           §§goto(addr00cf);
                        }
                        §§goto(addr00bd);
                     }
                  }
                  §§goto(addr00a3);
               }
               §§goto(addr0047);
            }
            addr00cf:
            return;
         }
         §§goto(addr0069);
      }
      
      override public function prepareIconStateManager() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(_iconStateManager == null)
            {
               if(!(_loc2_ && _loc2_))
               {
                  _iconStateManager = new IconStateCitySquareManager();
                  if(!(_loc2_ && _loc1_))
                  {
                     addr004e:
                     _iconStateManager.prepareIconStateManager(billboardObjectVo,_iconContainer,_billbordObjectContainer);
                  }
                  return;
               }
            }
         }
         §§goto(addr004e);
      }
      
      override public function invalidateIconStateManager(param1:Boolean = false) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.invalidateIconStateManager(param1);
         }
      }
      
      public function get citySquareFieldObjectVo() : CitySquareFieldObjectVo
      {
         return CitySquareFieldObjectVo(_data);
      }
      
      public function changeInfieldAsset(param1:DisplayObjectContainer) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            _assetCollection.mainAsset = param1;
            if(!_loc3_)
            {
               addr0036:
               _establishedManager = null;
               if(_loc2_ || _loc3_)
               {
                  this.prepareEstablishedManager();
               }
            }
            return;
         }
         §§goto(addr0036);
      }
   }
}

