package net.bigpoint.cityrama.view.common.components
{
   import flash.events.MouseEvent;
   import mx.core.IVisualElement;
   import mx.core.mx_internal;
   import net.bigpoint.cityrama.model.inventory.PlayfieldItemInventoryViewProxy;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.ImprovementInventoryItemRenderer;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.components.PlayfieldItemInventoryRenderer;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.components.PlayfieldItemInventorySlotComponent;
   import spark.components.IItemRenderer;
   import spark.components.List;
   
   use namespace mx_internal;
   
   public class StandardInventoryList extends List
   {
      
      private static var _skinParts:Object = {
         "dataGroup":false,
         "scroller":false,
         "dropIndicator":false
      };
      
      public function StandardInventoryList()
      {
         super();
      }
      
      override protected function item_mouseDownHandler(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(param1.currentTarget is IItemRenderer)
         {
            _loc2_ = int(IItemRenderer(param1.currentTarget).itemIndex);
            if(param1.currentTarget is ImprovementInventoryItemRenderer)
            {
               if((param1.currentTarget as ImprovementInventoryItemRenderer).isEmpty)
               {
                  return;
               }
            }
            else if(param1.currentTarget is PlayfieldItemInventoryRenderer)
            {
               var _loc3_:PlayfieldItemInventoryRenderer = param1.currentTarget as PlayfieldItemInventoryRenderer;
               if(param1.target is DynamicImageButton && param1.target.id == PlayfieldItemInventorySlotComponent.REMOVE_BTN_ID)
               {
                  return;
               }
               if(null.currentData.slotState == PlayfieldItemInventorySlotComponent.STATE_SLOT_LOCKED || null.currentData.slotState == PlayfieldItemInventorySlotComponent.STATE_SLOT_PURCHASABLE)
               {
                  return;
               }
               if(null.currentData.slotState == PlayfieldItemInventorySlotComponent.STATE_SLOT_OCCUPIED)
               {
                  _loc2_ = int(null.itemIndex);
                  if(null.currentData.itemAtCursor)
                  {
                     if(null.currentData.itemAtCursor != null.currentData.item)
                     {
                        return;
                     }
                     _loc2_ = int(selectedIndex);
                  }
                  else if(Boolean(null.currentData.emergencyRunning) && null.currentData.item.sortCategory == PlayfieldItemInventoryViewProxy.CATEGORY_EMERGENCY_INVENTORY)
                  {
                     return;
                  }
               }
               else if(null.currentData.slotState == PlayfieldItemInventorySlotComponent.STATE_SLOT_FREE)
               {
                  if(null.currentData.disabledAlpha < 1)
                  {
                     return;
                  }
                  if(null.currentData.itemAtCursor)
                  {
                     _loc2_ = int(null.itemIndex);
                     if(null.currentData.itemAtCursor.isBlocked)
                     {
                        return;
                     }
                  }
               }
            }
         }
         else
         {
            _loc2_ = int(dataGroup.getElementIndex(param1.currentTarget as IVisualElement));
         }
         if(selectedIndex == _loc2_)
         {
            mx_internal::setSelectedIndex(NO_SELECTION,true);
         }
         else
         {
            super.item_mouseDownHandler(param1);
         }
      }
   }
}

