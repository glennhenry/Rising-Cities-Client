package net.bigpoint.cityrama.model.field.vo
{
   import net.bigpoint.cityrama.model.horizon.vo.HorizionSettingsVo;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIcondataVo;
   
   public class BridgeFieldObjectVo extends PlayfieldSwitchFieldObjectVo implements IIcondataVo
   {
      
      public function BridgeFieldObjectVo()
      {
         super();
      }
      
      override public function get assetFrame() : String
      {
         switch(state)
         {
            case PlayfieldSwitchFieldObjectVo.STATE_IN_PROGRESS:
               return "wip_" + HorizionSettingsVo.playfieldIdToGfxId(currentPlayfieldId);
            case PlayfieldSwitchFieldObjectVo.STATE_BLOCKED:
               return "damaged_" + HorizionSettingsVo.playfieldIdToGfxId(currentPlayfieldId);
            default:
            case PlayfieldSwitchFieldObjectVo.STATE_DONE:
               return "repaired_" + HorizionSettingsVo.playfieldIdToGfxId(currentPlayfieldId);
         }
      }
   }
}

