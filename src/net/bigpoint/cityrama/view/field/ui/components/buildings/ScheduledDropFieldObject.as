package net.bigpoint.cityrama.view.field.ui.components.buildings
{
   import net.bigpoint.cityrama.model.field.vo.ScheduledDropFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.SpecialFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.IconStateScheduledDropManager;
   
   public class ScheduledDropFieldObject extends SpecialFieldObject
   {
      
      public function ScheduledDropFieldObject(param1:BillboardAssetsReferenceHolder, param2:SpecialFieldObjectVo)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      public function get scheduledDropFieldObjectVo() : ScheduledDropFieldObjectVo
      {
         return _data as ScheduledDropFieldObjectVo;
      }
      
      override public function prepareIconStateManager() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            if(_iconStateManager == null)
            {
               if(!_loc2_)
               {
                  _iconStateManager = new IconStateScheduledDropManager();
                  if(!_loc2_)
                  {
                     addr0046:
                     _iconStateManager.prepareIconStateManager(billboardObjectVo,_iconContainer,_billbordObjectContainer);
                  }
                  §§goto(addr0055);
               }
            }
            §§goto(addr0046);
         }
         addr0055:
      }
   }
}

