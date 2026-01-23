package net.bigpoint.cityrama.model.featureScreens
{
   import flash.utils.Dictionary;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.constants.quest.QuestGFXIDLayerConstants;
   import net.bigpoint.cityrama.model.featureScreens.vo.BigFeatureScreenVO;
   import net.bigpoint.cityrama.model.featureScreens.vo.FeatureCharacterScreenVo;
   import net.bigpoint.cityrama.model.featureScreens.vo.FeatureScreenStepDataVo;
   import net.bigpoint.cityrama.model.featureScreens.vo.FeatureScreenVo;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class FeatureScreenProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "FeatureScreenProxy";
      
      public static const FEATURE_NEEDS:String = "FEATURE_NEEDS";
      
      public static const FEATURE_PERMISSIONS:String = "FEATURE_PERMISSIONS";
      
      public static const FEATURE_BALANCE:String = "FEATURE_BALANCE";
      
      private var _featureScreenVoDic:Dictionary;
      
      private var _featureCharacterScreenVoDic:Dictionary;
      
      private var _bigFeatureScreenVoDic:Dictionary;
      
      public function FeatureScreenProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._featureScreenVoDic = new Dictionary();
         this._bigFeatureScreenVoDic = new Dictionary();
         this._featureCharacterScreenVoDic = new Dictionary();
      }
      
      public function getFeatureScreenVo(param1:String) : FeatureScreenVo
      {
         if(this._featureScreenVoDic[param1] == null)
         {
            this.fillFeatureScreenVoDic(param1);
         }
         return this._featureScreenVoDic[param1];
      }
      
      public function getFeatureCharacterScreenVo(param1:Number) : FeatureCharacterScreenVo
      {
         if(this._featureCharacterScreenVoDic[param1] == null)
         {
            this.fillFeatureCharacterDic(param1);
         }
         return this._featureCharacterScreenVoDic[param1];
      }
      
      public function getBigFeatureScreenVo(param1:Number) : BigFeatureScreenVO
      {
         if(this._bigFeatureScreenVoDic[param1] == null)
         {
            this.fillBigFeatureDic(param1);
         }
         return this._bigFeatureScreenVoDic[param1];
      }
      
      private function fillBigFeatureDic(param1:Number) : void
      {
         var _loc2_:BigFeatureScreenVO = new BigFeatureScreenVO();
         switch(param1)
         {
            case QuestGFXIDLayerConstants.INFRASTRUCTURE_FEATURE_SECURITY_GRADES:
               _loc2_.layerStyleName = "infrastructureFeatureScreen";
               _loc2_.dynaLibName = "gui_popup_infrastructurequestscreens";
               _loc2_.popuptitle = LocaUtils.getString("rcl.featurescreens.infrastructure." + "securitydevices" + "","rcl.featurescreens.infrastructure." + "securitydevices" + ".title");
               _loc2_.popupflavour = LocaUtils.getString("rcl.featurescreens.infrastructure." + "securitydevices" + "","rcl.featurescreens.infrastructure." + "securitydevices" + ".flavour");
               _loc2_.dynaMCName = "feature_securitydevices";
               _loc2_.texts = new <String>[LocaUtils.getString("rcl.featurescreens.infrastructure." + "securitydevices" + "","rcl.featurescreens.infrastructure." + "securitydevices" + ".text.textfield1"),LocaUtils.getString("rcl.featurescreens.infrastructure." + "securitydevices" + "","rcl.featurescreens.infrastructure." + "securitydevices" + ".text.textfield2"),LocaUtils.getString("rcl.featurescreens.infrastructure." + "securitydevices" + "","rcl.featurescreens.infrastructure." + "securitydevices" + ".text.textfield3"),LocaUtils.getString("rcl.featurescreens.infrastructure." + "securitydevices" + "","rcl.featurescreens.infrastructure." + "securitydevices" + ".text.textfield4")];
               break;
            case QuestGFXIDLayerConstants.INFRASTRUCTURE_FEATURE_SUCCESS_CHANCE:
               _loc2_.layerStyleName = "infrastructureFeatureScreen";
               _loc2_.dynaLibName = "gui_popup_infrastructurequestscreens";
               _loc2_.popuptitle = LocaUtils.getString("rcl.featurescreens.infrastructure." + "emergencyhandling" + "","rcl.featurescreens.infrastructure." + "emergencyhandling" + ".title");
               _loc2_.popupflavour = LocaUtils.getString("rcl.featurescreens.infrastructure." + "emergencyhandling" + "","rcl.featurescreens.infrastructure." + "emergencyhandling" + ".flavour");
               _loc2_.dynaMCName = "feature_emergencyhandling";
               _loc2_.texts = new <String>[LocaUtils.getString("rcl.featurescreens.infrastructure." + "emergencyhandling" + "","rcl.featurescreens.infrastructure." + "emergencyhandling" + ".text.textfield1"),LocaUtils.getString("rcl.featurescreens.infrastructure." + "emergencyhandling" + "","rcl.featurescreens.infrastructure." + "emergencyhandling" + ".text.textfield2"),LocaUtils.getString("rcl.featurescreens.infrastructure." + "emergencyhandling" + "","rcl.featurescreens.infrastructure." + "emergencyhandling" + ".text.textfield3")];
               _loc2_.titles = new <String>[LocaUtils.getString("rcl.featurescreens.infrastructure." + "emergencyhandling" + "","rcl.featurescreens.infrastructure." + "emergencyhandling" + ".text.titlebox1"),LocaUtils.getString("rcl.featurescreens.infrastructure." + "emergencyhandling" + "","rcl.featurescreens.infrastructure." + "emergencyhandling" + ".text.titlebox2"),LocaUtils.getString("rcl.featurescreens.infrastructure." + "emergencyhandling" + "","rcl.featurescreens.infrastructure." + "emergencyhandling" + ".text.titlebox3")];
               break;
            case QuestGFXIDLayerConstants.INFRASTRUCTURE_FEATURE_SECURITY_DEVICES:
               _loc2_.layerStyleName = "infrastructureFeatureScreen";
               _loc2_.dynaLibName = "gui_popup_infrastructurequestscreens";
               _loc2_.popuptitle = LocaUtils.getString("rcl.featurescreens.infrastructure." + "securitygrades" + "","rcl.featurescreens.infrastructure." + "securitygrades" + ".title");
               _loc2_.popupflavour = LocaUtils.getString("rcl.featurescreens.infrastructure." + "securitygrades" + "","rcl.featurescreens.infrastructure." + "securitygrades" + ".flavour");
               _loc2_.dynaMCName = "feature_securitygrades";
               _loc2_.texts = new <String>[LocaUtils.getString("rcl.featurescreens.infrastructure." + "securitygrades" + "","rcl.featurescreens.infrastructure." + "securitygrades" + ".text.textfield1"),LocaUtils.getString("rcl.featurescreens.infrastructure." + "securitygrades" + "","rcl.featurescreens.infrastructure." + "securitygrades" + ".text.textfield2"),LocaUtils.getString("rcl.featurescreens.infrastructure." + "securitygrades" + "","rcl.featurescreens.infrastructure." + "securitygrades" + ".text.textfield3")];
               break;
            case QuestGFXIDLayerConstants.IMPROVEMENT_FEATURE_BOOSTERPACKS:
               _loc2_.dynaLibName = "gui_popup_improvementFeatureScreens";
               _loc2_.dynaMCName = "feature_improvementBooster";
               _loc2_.popuptitle = LocaUtils.getString("rcl.featurescreens.improvements.boosterPacks","rcl.featurescreens.improvements.boosterPacks.title");
               _loc2_.popupflavour = LocaUtils.getString("rcl.featurescreens.improvements.boosterPacks","rcl.featurescreens.improvements.boosterPacks.flavour");
               _loc2_.texts = new <String>[LocaUtils.getString("rcl.featurescreens.improvements.boosterPacks","rcl.featurescreens.improvements.boosterPacks.text.textfield1")];
               break;
            case QuestGFXIDLayerConstants.IMPROVEMENT_FEATURE_CURSOR_MODE:
               _loc2_.dynaLibName = "gui_popup_improvementFeatureScreens";
               _loc2_.dynaMCName = "feature_improvementCursorMode";
               _loc2_.popuptitle = LocaUtils.getString("rcl.featurescreens.improvements.cursorMode","rcl.featurescreens.improvements.cursorMode.title");
               _loc2_.popupflavour = LocaUtils.getString("rcl.featurescreens.improvements.cursorMode","rcl.featurescreens.improvements.cursorMode.flavour");
               _loc2_.texts = new <String>[LocaUtils.getString("rcl.featurescreens.improvements.cursorMode","rcl.featurescreens.improvements.cursorMode.text.textfield1"),LocaUtils.getString("rcl.featurescreens.improvements.cursorMode","rcl.featurescreens.improvements.cursorMode.text.textfield2")];
               break;
            case QuestGFXIDLayerConstants.IMPROVEMENT_FEATURE_EFFECTS:
               _loc2_.dynaLibName = "gui_popup_improvementFeatureScreens";
               _loc2_.dynaMCName = "feature_improvementEffects";
               _loc2_.popuptitle = LocaUtils.getString("rcl.featurescreens.improvements.effects","rcl.featurescreens.improvements.effects.title");
               _loc2_.popupflavour = LocaUtils.getString("rcl.featurescreens.improvements.effects","rcl.featurescreens.improvements.effects.flavour");
               _loc2_.texts = new <String>[LocaUtils.getString("rcl.featurescreens.improvements.effects","rcl.featurescreens.improvements.effects.text.textfield1"),LocaUtils.getString("rcl.featurescreens.improvements.effects","rcl.featurescreens.improvements.effects.text.textfield2"),LocaUtils.getString("rcl.featurescreens.improvements.effects","rcl.featurescreens.improvements.effects.text.textfield3"),LocaUtils.getString("rcl.featurescreens.improvements.effects","rcl.featurescreens.improvements.effects.text.textfield4"),LocaUtils.getString("rcl.featurescreens.improvements.effects","rcl.featurescreens.improvements.effects.text.textfield5"),LocaUtils.getString("rcl.featurescreens.improvements.effects","rcl.featurescreens.improvements.effects.text.textfield6")];
               _loc2_.titles = new <String>[LocaUtils.getString("rcl.featurescreens.improvements.effects","rcl.featurescreens.improvements.effects.text.titlebox1"),LocaUtils.getString("rcl.featurescreens.improvements.effects","rcl.featurescreens.improvements.effects.text.titlebox2"),LocaUtils.getString("rcl.featurescreens.improvements.effects","rcl.featurescreens.improvements.effects.text.titlebox3"),LocaUtils.getString("rcl.featurescreens.improvements.effects","rcl.featurescreens.improvements.effects.text.titlebox4"),LocaUtils.getString("rcl.featurescreens.improvements.effects","rcl.featurescreens.improvements.effects.text.titlebox5"),LocaUtils.getString("rcl.featurescreens.improvements.effects","rcl.featurescreens.improvements.effects.text.titlebox6")];
               break;
            case QuestGFXIDLayerConstants.IMPROVEMENT_FEATURE_MANAGEMENT_LAYER:
               _loc2_.dynaLibName = "gui_popup_improvementFeatureScreens";
               _loc2_.dynaMCName = "feature_improvementManagement";
               _loc2_.popuptitle = LocaUtils.getString("rcl.featurescreens.improvements.management","rcl.featurescreens.improvements.management.title");
               _loc2_.popupflavour = LocaUtils.getString("rcl.featurescreens.improvements.management","rcl.featurescreens.improvements.management.flavour");
               _loc2_.texts = new <String>[LocaUtils.getString("rcl.featurescreens.improvements.management","rcl.featurescreens.improvements.management.text.textfield1"),LocaUtils.getString("rcl.featurescreens.improvements.management","rcl.featurescreens.improvements.management.text.textfield2")];
               break;
            case QuestGFXIDLayerConstants.BIG_FEATURE_CAPITALISTS:
               _loc2_.dynaLibName = "gui_popup_bigFeatureScreens_misc";
               _loc2_.dynaMCName = "feature_capitalists";
               _loc2_.popuptitle = LocaUtils.getString("rcl.featurescreens.capitalists","rcl.featurescreens.capitalists.title.capital");
               _loc2_.popupflavour = LocaUtils.getString("rcl.featurescreens.capitalists","rcl.featurescreens.capitalists.flavour");
               _loc2_.texts = new <String>[LocaUtils.getString("rcl.featurescreens.capitalists","rcl.featurescreens.capitalists.text.textfield1")];
               break;
            case QuestGFXIDLayerConstants.BIG_FEATURE_PRODUCTION_POINTS:
               _loc2_.dynaLibName = "gui_popup_bigFeatureScreens_misc";
               _loc2_.dynaMCName = "feature_productionPoints";
               _loc2_.popuptitle = LocaUtils.getString("rcl.featurescreens.productionPoints.new","rcl.featurescreens.productionPoints.new.title.capital");
               _loc2_.popupflavour = LocaUtils.getString("rcl.featurescreens.productionPoints.new","rcl.featurescreens.productionPoints.new.flavour");
               _loc2_.texts = new <String>[LocaUtils.getString("rcl.featurescreens.productionPoints.new","rcl.featurescreens.productionPoints.new.text.textfield1"),LocaUtils.getString("rcl.featurescreens.productionPoints.new","rcl.featurescreens.productionPoints.new.text.textfield2")];
               break;
            case QuestGFXIDLayerConstants.BIG_FEATURE_PF2_BRIDGE:
               _loc2_.dynaLibName = "gui_popup_bigFeatureScreens_misc";
               _loc2_.dynaMCName = "feature_pf2_bridge";
               _loc2_.popuptitle = LocaUtils.getString("rcl.featurescreens.secondPlayfield.new","rcl.featurescreens.secondPlayfield.new.title.capital");
               _loc2_.popupflavour = LocaUtils.getString("rcl.featurescreens.secondPlayfield.new","rcl.featurescreens.secondPlayfield.new.flavour");
               _loc2_.texts = new <String>[LocaUtils.getString("rcl.featurescreens.secondPlayfield.new","rcl.featurescreens.secondPlayfield.new.text.textfield1")];
               break;
            case QuestGFXIDLayerConstants.BIG_FEATURE_PF2_COASTAL_BUILDINGS:
               _loc2_.dynaLibName = "gui_popup_bigFeatureScreens_misc";
               _loc2_.dynaMCName = "feature_pf2_coastal_building";
               _loc2_.popuptitle = LocaUtils.getString("rcl.featurescreens.coastalBuildings.new","rcl.featurescreens.coastalBuildings.new.title.capital");
               _loc2_.popupflavour = LocaUtils.getString("rcl.featurescreens.coastalBuildings.new","rcl.featurescreens.coastalBuildings.new.flavour");
               _loc2_.texts = new <String>[LocaUtils.getString("rcl.featurescreens.coastalBuildings.new","rcl.featurescreens.coastalBuildings.new.text.textfield1"),LocaUtils.getString("rcl.featurescreens.coastalBuildings.new","rcl.featurescreens.coastalBuildings.new.text.textfield2")];
               break;
            case QuestGFXIDLayerConstants.BIG_FEATURE_SUBLEVEL:
               _loc2_.dynaLibName = "gui_popup_bigFeatureScreens_misc";
               _loc2_.dynaMCName = "feature_sublevel";
               _loc2_.popuptitle = LocaUtils.getString("rcl.featurescreens.sublevel","rcl.featurescreens.sublevel.title.capital");
               _loc2_.popupflavour = LocaUtils.getString("rcl.featurescreens.sublevel","rcl.featurescreens.sublevel.flavour");
               _loc2_.texts = new <String>[LocaUtils.getString("rcl.featurescreens.sublevel","rcl.featurescreens.sublevel.text.textfield1")];
               break;
            case QuestGFXIDLayerConstants.BIG_FEATURE_MASTERY:
               _loc2_.dynaLibName = "gui_popup_bigFeatureScreens_misc";
               _loc2_.dynaMCName = "feature_mastery";
               _loc2_.popuptitle = LocaUtils.getString("rcl.featurescreens.mastery","rcl.featurescreens.mastery.title.capital");
               _loc2_.popupflavour = LocaUtils.getString("rcl.featurescreens.mastery","rcl.featurescreens.mastery.flavour");
               _loc2_.texts = new <String>[LocaUtils.getString("rcl.featurescreens.mastery","rcl.featurescreens.mastery.text.textfield1")];
         }
         this._bigFeatureScreenVoDic[param1] = _loc2_;
      }
      
      private function fillFeatureCharacterDic(param1:Number) : void
      {
         var _loc2_:FeatureCharacterScreenVo = null;
         switch(param1)
         {
            case QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_KAIDEN:
               _loc2_ = new FeatureCharacterScreenVo();
               _loc2_.layerStyleName = "infrastructurekaidenintro";
               _loc2_.title = LocaUtils.getString("rcl.miniLayer.infrastructurekaidenintro","rcl.miniLayer.infrastructurekaidenintro.title");
               _loc2_.flavourText = LocaUtils.getString("rcl.miniLayer.infrastructurekaidenintro","rcl.miniLayer.infrastructurekaidenintro.flavour");
               _loc2_.buttonLabel = LocaUtils.getString("rcl.miniLayer.infrastructurekaidenintro","rcl.miniLayer.infrastructurekaidenintro.button");
               _loc2_.buttonTooltip = LocaUtils.getString("rcl.miniLayer.infrastructurekaidenintro","rcl.miniLayer.infrastructurekaidenintro.button.tooltip");
               _loc2_.characterName = LocaUtils.getString("rcl.miniLayer.infrastructurekaidenintro","rcl.miniLayer.infrastructurekaidenintro.charName");
               _loc2_.mainLayerText = LocaUtils.getString("rcl.miniLayer.infrastructurekaidenintro","rcl.miniLayer.infrastructurekaidenintro.maintext");
               _loc2_.characterGfx = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_kaiden");
               _loc2_.mainGfx = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_gradeshot");
               _loc2_.smallGfxLeft = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_firedept");
               _loc2_.smallGfxRight = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_catshot");
               break;
            case QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_EDUCATION:
               _loc2_ = new FeatureCharacterScreenVo();
               _loc2_.layerStyleName = "infrastructureeducationintro";
               _loc2_.title = LocaUtils.getString("rcl.miniLayer.infrastructureeducationintro","rcl.miniLayer.infrastructureeducationintro.title");
               _loc2_.flavourText = LocaUtils.getString("rcl.miniLayer.infrastructureeducationintro","rcl.miniLayer.infrastructureeducationintro.flavour");
               _loc2_.buttonLabel = LocaUtils.getString("rcl.miniLayer.infrastructureeducationintro","rcl.miniLayer.infrastructureeducationintro.button");
               _loc2_.buttonTooltip = LocaUtils.getString("rcl.miniLayer.infrastructureeducationintro","rcl.miniLayer.infrastructureeducationintro.button.tooltip");
               _loc2_.characterName = LocaUtils.getString("rcl.miniLayer.infrastructureeducationintro","rcl.miniLayer.infrastructureeducationintro.charName");
               _loc2_.mainLayerText = LocaUtils.getString("rcl.miniLayer.infrastructureeducationintro","rcl.miniLayer.infrastructureeducationintro.maintext");
               _loc2_.mainLayerTextHeader = LocaUtils.getString("rcl.miniLayer.infrastructureeducationintro","rcl.miniLayer.infrastructureeducationintro.maintextHeader");
               _loc2_.characterGfx = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_teacher");
               _loc2_.mainGfx = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_academy");
               break;
            case QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_KAIDEN_FRIENDS:
               _loc2_ = new FeatureCharacterScreenVo();
               _loc2_.layerStyleName = "infrastructurekaidenintro";
               _loc2_.title = LocaUtils.getString("rcl.miniLayer.infrastructurekaidenandcointro","rcl.miniLayer.infrastructurekaidenandcointro.title");
               _loc2_.flavourText = LocaUtils.getString("rcl.miniLayer.infrastructurekaidenandcointro","rcl.miniLayer.infrastructurekaidenandcointro.flavour");
               _loc2_.buttonLabel = LocaUtils.getString("rcl.miniLayer.infrastructurekaidenandcointro","rcl.miniLayer.infrastructurekaidenandcointro.button");
               _loc2_.buttonTooltip = LocaUtils.getString("rcl.miniLayer.infrastructurekaidenandcointro","rcl.miniLayer.infrastructurekaidenandcointro.button.tooltip");
               _loc2_.characterName = LocaUtils.getString("rcl.miniLayer.infrastructurekaidenandcointro","rcl.miniLayer.infrastructurekaidenandcointro.charName");
               _loc2_.mainLayerText = LocaUtils.getString("rcl.miniLayer.infrastructurekaidenandcointro","rcl.miniLayer.infrastructurekaidenandcointro.maintext");
               _loc2_.mainLayerTextHeader = LocaUtils.getString("rcl.miniLayer.infrastructurekaidenandcointro","rcl.miniLayer.infrastructurekaidenandcointro.maintextHeader");
               _loc2_.characterGfx = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_kaiden");
               _loc2_.mainGfx = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_kaidenandco");
               break;
            case QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_POLICE:
               _loc2_ = new FeatureCharacterScreenVo();
               _loc2_.layerStyleName = "infrastructurekaidenintro";
               _loc2_.title = LocaUtils.getString("rcl.miniLayer.infrastructurepoliceintro","rcl.miniLayer.infrastructurepoliceintro.title");
               _loc2_.flavourText = LocaUtils.getString("rcl.miniLayer.infrastructurepoliceintro","rcl.miniLayer.infrastructurepoliceintro.flavour");
               _loc2_.buttonLabel = LocaUtils.getString("rcl.miniLayer.infrastructurepoliceintro","rcl.miniLayer.infrastructurepoliceintro.button");
               _loc2_.buttonTooltip = LocaUtils.getString("rcl.miniLayer.infrastructurepoliceintro","rcl.miniLayer.infrastructurepoliceintro.button.tooltip");
               _loc2_.characterName = LocaUtils.getString("rcl.miniLayer.infrastructurepoliceintro","rcl.miniLayer.infrastructurepoliceintro.charName");
               _loc2_.mainLayerText = LocaUtils.getString("rcl.miniLayer.infrastructurepoliceintro","rcl.miniLayer.infrastructurepoliceintro.maintext");
               _loc2_.characterGfx = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_sarika_crime");
               _loc2_.mainGfx = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_cctv");
               _loc2_.smallGfxLeft = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_policedept");
               _loc2_.smallGfxRight = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_catshot");
               break;
            case QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_POLICECHIEF:
               _loc2_ = new FeatureCharacterScreenVo();
               _loc2_.layerStyleName = "infrastructurekaidenintro";
               _loc2_.title = LocaUtils.getString("rcl.miniLayer.infrastructurepolicechiefintro","rcl.miniLayer.infrastructurepolicechiefintro.title");
               _loc2_.flavourText = LocaUtils.getString("rcl.miniLayer.infrastructurepolicechiefintro","rcl.miniLayer.infrastructurepolicechiefintro.flavour");
               _loc2_.buttonLabel = LocaUtils.getString("rcl.miniLayer.infrastructurepolicechiefintro","rcl.miniLayer.infrastructurepolicechiefintro.button");
               _loc2_.buttonTooltip = LocaUtils.getString("rcl.miniLayer.infrastructurepolicechiefintro","rcl.miniLayer.infrastructurepolicechiefintro.button.tooltip");
               _loc2_.characterName = LocaUtils.getString("rcl.miniLayer.infrastructurepolicechiefintro","rcl.miniLayer.infrastructurepolicechiefintro.charName");
               _loc2_.mainLayerText = LocaUtils.getString("rcl.miniLayer.infrastructurepolicechiefintro","rcl.miniLayer.infrastructurepolicechiefintro.maintext");
               _loc2_.mainLayerTextHeader = LocaUtils.getString("rcl.miniLayer.infrastructurepolicechiefintro","rcl.miniLayer.infrastructurepolicechiefintro.maintextHeader");
               _loc2_.characterGfx = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_chief");
               _loc2_.mainGfx = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_chiefandco");
               break;
            case QuestGFXIDLayerConstants.CHARACTER_SARIKA_INTRODUCTION:
               _loc2_ = new FeatureCharacterScreenVo();
               _loc2_.layerStyleName = "infrastructurekaidenintro";
               _loc2_.title = LocaUtils.getString("rcl.featurescreens.character.sarika","rcl.featurescreens.character.sarika.title.capital");
               _loc2_.flavourText = LocaUtils.getString("rcl.featurescreens.character.sarika","rcl.featurescreens.character.sarika.bubbleText");
               _loc2_.buttonLabel = LocaUtils.getString("rcl.featurescreens.character.sarika","rcl.featurescreens.character.sarika.button");
               _loc2_.buttonTooltip = LocaUtils.getString("rcl.featurescreens.character.sarika","rcl.featurescreens.character.sarika.button.tooltip");
               _loc2_.characterName = LocaUtils.getString("rcl.featurescreens.character.sarika","rcl.featurescreens.character.sarika.characterName");
               _loc2_.mainLayerText = LocaUtils.getString("rcl.featurescreens.character.sarika","rcl.featurescreens.character.sarika.mainText");
               _loc2_.characterGfx = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_sarika_needs");
               _loc2_.mainGfx = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_needProtest");
               _loc2_.smallGfxLeft = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_noNeedShot");
               _loc2_.smallGfxRight = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_needShot");
         }
         this._featureCharacterScreenVoDic[param1] = _loc2_;
      }
      
      private function fillFeatureScreenVoDic(param1:String) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Vector.<FeatureScreenStepDataVo> = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         switch(param1)
         {
            case FEATURE_NEEDS:
               _loc2_ = new Object();
               _loc2_.title = ResourceManager.getInstance().getString(String("rcl.featurescreens.needs"),String("rcl.featurescreens.needs.title"));
               _loc2_.flavour = ResourceManager.getInstance().getString(String("rcl.featurescreens.needs"),String("rcl.featurescreens.needs.flavorText.new"));
               _loc2_.stepAmount = 6;
               _loc3_ = new Vector.<FeatureScreenStepDataVo>();
               _loc4_ = 1;
               while(_loc4_ <= _loc2_.stepAmount)
               {
                  _loc5_ = "rcl.featurescreens.needs.title.step" + _loc4_;
                  _loc6_ = ResourceManager.getInstance().getString(String("rcl.featurescreens.needs"),String(_loc5_));
                  _loc7_ = "rcl.featurescreens.needs.text.step" + _loc4_;
                  _loc8_ = ResourceManager.getInstance().getString(String("rcl.featurescreens.needs"),String(_loc7_));
                  _loc9_ = "need_step" + _loc4_;
                  if(_loc4_ == 3)
                  {
                     _loc8_ = ResourceManager.getInstance().getString(String("rcl.featurescreens.needs"),String("rcl.featurescreens.needs.text.step3.new"));
                  }
                  else if(_loc4_ == 4)
                  {
                     _loc8_ = ResourceManager.getInstance().getString(String("rcl.featurescreens.needs"),String("rcl.featurescreens.needs.text.step4.new"));
                  }
                  _loc3_.push(new FeatureScreenStepDataVo("gui_popups_features_steps",_loc9_,_loc6_,_loc8_));
                  _loc4_++;
               }
               _loc2_.steps = _loc3_;
               _loc2_.feature = FEATURE_NEEDS;
               break;
            case FEATURE_PERMISSIONS:
               _loc2_ = new Object();
               _loc2_.title = ResourceManager.getInstance().getString(String("rcl.featurescreens.permissions"),String("rcl.featurescreens.permissions.title"));
               _loc2_.flavour = ResourceManager.getInstance().getString(String("rcl.featurescreens.permissions"),String("rcl.featurescreens.permissions.flavorText"));
               _loc2_.stepAmount = 5;
               _loc3_ = new Vector.<FeatureScreenStepDataVo>();
               _loc4_ = 1;
               while(_loc4_ <= _loc2_.stepAmount)
               {
                  _loc5_ = "rcl.featurescreens.permissions.title.step" + _loc4_;
                  _loc6_ = ResourceManager.getInstance().getString(String("rcl.featurescreens.permissions"),String(_loc5_));
                  _loc7_ = "rcl.featurescreens.permissions.text.step" + _loc4_;
                  _loc8_ = ResourceManager.getInstance().getString(String("rcl.featurescreens.permissions"),String(_loc7_));
                  _loc9_ = "permissions_step" + _loc4_;
                  _loc3_.push(new FeatureScreenStepDataVo("gui_popups_features_steps",_loc9_,_loc6_,_loc8_));
                  _loc4_++;
               }
               _loc2_.steps = _loc3_;
               _loc2_.feature = FEATURE_PERMISSIONS;
               break;
            case FEATURE_BALANCE:
               _loc2_ = new Object();
               _loc2_.title = ResourceManager.getInstance().getString(String("rcl.featurescreens.balance"),String("rcl.featurescreens.balance.title"));
               _loc2_.flavour = ResourceManager.getInstance().getString(String("rcl.featurescreens.balance"),String("rcl.featurescreens.balance.flavorText"));
               _loc2_.stepAmount = 6;
               _loc3_ = new Vector.<FeatureScreenStepDataVo>();
               _loc4_ = 1;
               while(_loc4_ <= _loc2_.stepAmount)
               {
                  _loc5_ = "rcl.featurescreens.balance.title.step" + _loc4_;
                  _loc6_ = ResourceManager.getInstance().getString(String("rcl.featurescreens.balance"),String(_loc5_));
                  _loc7_ = "rcl.featurescreens.balance.text.step" + _loc4_;
                  _loc8_ = ResourceManager.getInstance().getString(String("rcl.featurescreens.balance"),String(_loc7_));
                  _loc9_ = "balance_step" + _loc4_;
                  _loc3_.push(new FeatureScreenStepDataVo("gui_popups_features_steps",_loc9_,_loc6_,_loc8_));
                  _loc4_++;
               }
               _loc2_.steps = _loc3_;
               _loc2_.feature = FEATURE_BALANCE;
         }
         this._featureScreenVoDic[param1] = new FeatureScreenVo(_loc2_);
      }
   }
}

