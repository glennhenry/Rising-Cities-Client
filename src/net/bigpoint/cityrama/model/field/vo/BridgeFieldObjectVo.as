package net.bigpoint.cityrama.model.field.vo
{
   import net.bigpoint.cityrama.model.horizon.vo.HorizionSettingsVo;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIcondataVo;
   
   public class BridgeFieldObjectVo extends PlayfieldSwitchFieldObjectVo implements IIcondataVo
   {
      
      public function BridgeFieldObjectVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override public function get assetFrame() : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:String = state;
         if(!_loc3_)
         {
            switch(_loc1_)
            {
               case PlayfieldSwitchFieldObjectVo.STATE_IN_PROGRESS:
                  if(_loc2_)
                  {
                     §§push(0);
                     if(_loc3_ && _loc2_)
                     {
                     }
                     break;
                  }
                  addr00f8:
                  §§push(1);
                  if(_loc2_)
                  {
                  }
                  break;
               case PlayfieldSwitchFieldObjectVo.STATE_BLOCKED:
                  if(_loc2_)
                  {
                     §§goto(addr00f8);
                  }
               case PlayfieldSwitchFieldObjectVo.STATE_DONE:
               default:
                  §§push(2);
            }
            switch(§§pop())
            {
               case 0:
                  §§push("wip_");
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     §§push(HorizionSettingsVo.playfieldIdToGfxId(currentPlayfieldId));
                     if(_loc2_ || Boolean(this))
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc2_ || Boolean(this))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr0088:
                        §§push(§§pop() + §§pop());
                        if(_loc3_)
                        {
                           break;
                        }
                     }
                     return §§pop();
                  }
                  break;
               case 1:
                  §§push("damaged_");
                  if(!(_loc2_ || _loc2_))
                  {
                     break;
                  }
                  §§push(HorizionSettingsVo.playfieldIdToGfxId(currentPlayfieldId));
                  if(!_loc2_)
                  {
                     addr00b0:
                     §§push(§§pop() + §§pop());
                     break;
                  }
                  §§goto(addr0088);
                  break;
               default:
                  §§push("repaired_");
                  if(!(_loc2_ || _loc3_))
                  {
                     break;
                  }
                  §§goto(addr00b0);
                  return HorizionSettingsVo.playfieldIdToGfxId(currentPlayfieldId);
            }
            return §§pop();
         }
         §§push(3);
         if(_loc3_)
         {
         }
         §§goto(addr0125);
      }
   }
}

