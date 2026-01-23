package net.bigpoint.cityrama.model.quest
{
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.model.quest.vo.QuestVirtualTaskVo;
   import net.bigpoint.util.LocaUtils;
   
   public class VirtualTasksDescriptorSetting
   {
      
      private var _taskToVirtualTaskDict:Dictionary;
      
      public function VirtualTasksDescriptorSetting()
      {
         super();
         this._taskToVirtualTaskDict = new Dictionary();
         this.buildVirtualTasks();
      }
      
      private static function getQuestVirtualTaskVo(param1:String, param2:int, param3:String, param4:String = "0", param5:Number = 0) : QuestVirtualTaskVo
      {
         if(param4 == "0")
         {
            param4 = param1;
         }
         var _loc6_:QuestVirtualTaskVo = new QuestVirtualTaskVo();
         _loc6_.localeId = param1;
         _loc6_.gfxId = param2;
         _loc6_.headerText = getLocaString("header." + _loc6_.localeId);
         _loc6_.flavourText = getLocaString("flavor." + _loc6_.localeId);
         _loc6_.isCompleted = false;
         _loc6_.targetItemGfxId = param5;
         _loc6_.followingTaskLocaleId = param3;
         _loc6_.previousTaskId = param4;
         _loc6_.notificationCancelInterest = getCancelInterestById(param1);
         _loc6_.notificationInterest = getInterestById(param1);
         return _loc6_;
      }
      
      private static function getInterestById(param1:String) : Vector.<String>
      {
         switch(param1)
         {
            case "1641":
            case "1661":
            case "2071":
            case "1861":
               return new <String>[VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_OPENED];
            case "1642":
               return new <String>[VirtualTaskNotificationInterest.ARCHITECTURAL_DETAIL_RESIDENTIAL_SELECTED];
            case "1643":
               return new <String>[VirtualTaskNotificationInterest.RESIDENTIAL_CATEGORY_PLACE_SELECTED];
            case "1662":
               return new <String>[VirtualTaskNotificationInterest.ARCHITECTURAL_DETAIL_GROUND_SELECTED];
            case "1663":
               return new <String>[VirtualTaskNotificationInterest.GROUND_CATEGORY_PLACE_SELECTED];
            case "601":
               return new <String>[VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_SPECIAL_SELECTED];
            case "1881":
               return new <String>[VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_PLACE_CLICKED];
            case "1771":
            case "1811":
               return new <String>[VirtualTaskNotificationInterest.MINILAYER_CONSTRUCTION_OPENED];
            case "1741":
               return new <String>[VirtualTaskNotificationInterest.PRODUCTION_CATEGORY_PLACE_SELECTED];
            case "1751":
            case "1901":
               return new <String>[VirtualTaskNotificationInterest.PRODUCTIONLAYER_OPENED];
            case "1711":
               return new <String>[VirtualTaskNotificationInterest.UPGRADEREADY_RESIDENTIAL_LAYEROPENED];
            case "1941":
               return new <String>[VirtualTaskNotificationInterest.MINILAYER_BUYEXPANSION_OPENED];
            case "1902":
               return new <String>[VirtualTaskNotificationInterest.SHOPLAYER_OPENED];
            case "1671":
            case "1851":
            case "1031":
            case "1621":
               return new <String>[VirtualTaskNotificationInterest.MAINMENUE_CURSORSUBMENUE_OPENED];
            case "1672":
            case "1032":
               return new <String>[VirtualTaskNotificationInterest.APPLICATIONMODES_MOVE_INIT];
            case "1852":
               return new <String>[VirtualTaskNotificationInterest.APPLICATIONMODES_DESTROY_INIT];
            case "1701":
            case "1081":
               return new <String>[VirtualTaskNotificationInterest.OPTIONS_MENU_EXPANDED];
            case "462":
            case "972":
               return new <String>[VirtualTaskNotificationInterest.CITYSQUARELAYER_DETAIL_OPENED];
            case "482":
               return new <String>[VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_FIREDEPARTMENT_SELECTED];
            case "492":
            case "511":
               return new <String>[VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_HYDRANT_SELECTED];
            case "501":
               return new <String>[VirtualTaskNotificationInterest.EMERGENCY_BOOK_OPENED];
            case "503":
               return new <String>[VirtualTaskNotificationInterest.EMERGENCY_BOOK_PROFESSIONAL_SLOT_CLICKED];
            case "504":
               return new <String>[VirtualTaskNotificationInterest.EMERGENCY_BOOK_PROFESSIONAL_SELECTED];
            case "2012":
            case "522":
               return new <String>[VirtualTaskNotificationInterest.BOOSTERPACK_STORE_OPENED];
            case "531":
               return new <String>[VirtualTaskNotificationInterest.BUILDING_REPAIR_LAYER_OPENED];
            case "541":
               return new <String>[VirtualTaskNotificationInterest.FIRE_DEPARTMENT_LAYER_OPENED];
            case "542":
               return new <String>[VirtualTaskNotificationInterest.FIRE_DEPARTMENT_DETAIL_LAYER_OPENED];
            case "562":
            case "571":
            case "941":
               return new <String>[VirtualTaskNotificationInterest.ACADEMY_LAYER_OPENED];
            case "971":
               return new <String>[VirtualTaskNotificationInterest.CITYSQUARELAYER_SELECTION_OPENED];
            case "1001":
               return new <String>[VirtualTaskNotificationInterest.CITY_TREASURY_OPENED];
            case "1592":
               return new <String>[VirtualTaskNotificationInterest.IMPROVEMENT_SHOP_OPENED];
            case "1601":
               return new <String>[VirtualTaskNotificationInterest.RESIDENTIALLAYED_OPENED];
            case "1602":
               return new <String>[VirtualTaskNotificationInterest.RESIDENTIALLAYER_IMPROVEMENT_OPENED];
            case "1622":
               return new <String>[VirtualTaskNotificationInterest.APPLICATIONMODES_IMROVEMENT_INIT];
            case "1021":
               return new <String>[VirtualTaskNotificationInterest.RENTCOLLECTOR_MINILAYER_OPENED];
            case "1971":
               return new <String>[VirtualTaskNotificationInterest.PLAYFIELDSWITCH_MINILAYER_OPENED];
            case "2032":
               return new <String>[VirtualTaskNotificationInterest.FEATURED_EVENT_LAYER_OPENED];
            case "2072":
               return new <String>[VirtualTaskNotificationInterest.ARCHITECTURAL_BOOK_CINEMA_SELECTED];
            case "524":
            case "1591":
            case "1611":
               return new <String>[VirtualTaskNotificationInterest.INGAME_STORE_OPENED];
            case "2031":
               return new <String>[VirtualTaskNotificationInterest.CITY_WHEEL_LAYER_OPEN];
            case "1862":
               return new <String>[VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_DECORATION_SELECTED];
            case "943":
               return new <String>[VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_DECORATION_SELECTED];
            default:
               return new Vector.<String>(0);
         }
      }
      
      private static function getCancelInterestById(param1:String) : Vector.<String>
      {
         switch(param1)
         {
            case "1641":
            case "1661":
               return new <String>[VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_CLOSED,VirtualTaskNotificationInterest.APPMODE_BUILD_DEINITIALZE];
            case "1642":
            case "1662":
               return new <String>[VirtualTaskNotificationInterest.APPMODE_BUILD_DEINITIALZE,VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_CLOSED,VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_POWERPLANT_SELECTED,VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_PRODUCTION_SELECTED,VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_INFRASTRUCTURE_SELECTED,VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_DECORATION_SELECTED,VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_SHOP_SELECTED,VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_SPECIAL_SELECTED,VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_RESIDENTIAL_SELECTED,VirtualTaskNotificationInterest.ARCHITECTURAL_CATEGORY_GROUNDS_SELECTED];
            case "1643":
            case "1663":
            case "1741":
            case "2072":
            case "1881":
            case "482":
            case "492":
            case "511":
               return new <String>[VirtualTaskNotificationInterest.APPMODE_BUILD_DEINITIALZE];
            case "1771":
            case "1811":
               return new <String>[VirtualTaskNotificationInterest.MINILAYER_CONSTRUCTION_CLOSED];
            case "1751":
            case "1901":
               return new <String>[VirtualTaskNotificationInterest.PRODUCTIONLAYER_CLOSED];
            case "1711":
            case "1601":
               return new <String>[VirtualTaskNotificationInterest.RESIDENTIALLAYED_CLOSED];
            case "1941":
               return new <String>[VirtualTaskNotificationInterest.MINILAYER_BUYEXPANSION_CLOSED];
            case "1902":
               return new <String>[VirtualTaskNotificationInterest.SHOPLAYER_CLOSED];
            case "1671":
            case "1851":
            case "1621":
               return new <String>[VirtualTaskNotificationInterest.MAINMENUE_CURSORSUBMENUE_CLOSED];
            case "1672":
            case "1032":
               return new <String>[VirtualTaskNotificationInterest.APPLICATIONMODES_MOVE_DEINIT];
            case "1852":
               return new <String>[VirtualTaskNotificationInterest.APPLICATIONMODES_DESTROY_DEINIT];
            case "1701":
            case "1081":
               return new <String>[VirtualTaskNotificationInterest.OPTIONS_MENU_COLLAPSED];
            case "462":
            case "972":
               return new <String>[VirtualTaskNotificationInterest.CITYSQUARELAYER_DETAIL_CLOSED];
            case "501":
            case "503":
            case "504":
               return new <String>[VirtualTaskNotificationInterest.EMERGENCY_BOOK_CLOSED];
            case "522":
            case "2012":
               return new <String>[VirtualTaskNotificationInterest.BOOSTERPACK_STORE_CLOSED];
            case "524":
            case "1591":
            case "1611":
               return new <String>[VirtualTaskNotificationInterest.INGAME_STORE_CLOSED];
            case "531":
               return new <String>[VirtualTaskNotificationInterest.BUILDING_REPAIR_LAYER_CLOSED];
            case "541":
            case "542":
               return new <String>[VirtualTaskNotificationInterest.FIRE_DEPARTMENT_LAYER_CLOSED];
            case "562":
            case "571":
            case "941":
               return new <String>[VirtualTaskNotificationInterest.ACADEMY_LAYER_CLOSED];
            case "971":
               return new <String>[VirtualTaskNotificationInterest.CITYSQUARELAYER_SELECTION_CLOSED];
            case "1001":
               return new <String>[VirtualTaskNotificationInterest.CITY_TREASURY_CLOSED];
            case "1031":
               return new <String>[VirtualTaskNotificationInterest.APPLICATIONMODES_MOVE_DEINIT,VirtualTaskNotificationInterest.MAINMENUE_CURSORSUBMENUE_CLOSED];
            case "1021":
               return new <String>[VirtualTaskNotificationInterest.RENTCOLLECTOR_MINILAYER_CLOSED];
            case "1592":
               return new <String>[VirtualTaskNotificationInterest.IMPROVEMENT_SHOP_CLOSED];
            case "1602":
               return new <String>[VirtualTaskNotificationInterest.RESIDENTIALLAYER_IMPROVEMENT_CLOSED];
            case "1622":
               return new <String>[VirtualTaskNotificationInterest.APPLICATIONMODES_IMROVEMENT_DEINIT];
            case "1971":
               return new <String>[VirtualTaskNotificationInterest.PLAYFIELDSWITCH_MINILAYER_CLOSED];
            case "2032":
               return new <String>[VirtualTaskNotificationInterest.FEATURED_EVENT_LAYER_CLOSED];
            case "601":
               return new <String>[VirtualTaskNotificationInterest.APPMODE_BUILD_DEINITIALZE,VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_CLOSED,VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_POWERPLANT_SELECTED,VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_PRODUCTION_SELECTED,VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_INFRASTRUCTURE_SELECTED,VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_DECORATION_SELECTED,VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_SHOP_SELECTED,VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_RESIDENTIAL_SELECTED,VirtualTaskNotificationInterest.ARCHITECTURAL_CATEGORY_GROUNDS_SELECTED];
            case "2031":
               return new <String>[VirtualTaskNotificationInterest.CITY_WHEEL_LAYER_CLOSED];
            case "2071":
            case "1861":
               return new <String>[VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_CLOSED];
            case "1862":
               return new <String>[VirtualTaskNotificationInterest.APPMODE_BUILD_DEINITIALZE,VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_CLOSED,VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_POWERPLANT_SELECTED,VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_PRODUCTION_SELECTED,VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_INFRASTRUCTURE_SELECTED,VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_SPECIAL_SELECTED,VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_SHOP_SELECTED,VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_RESIDENTIAL_SELECTED,VirtualTaskNotificationInterest.ARCHITECTURAL_CATEGORY_GROUNDS_SELECTED];
            default:
               return new Vector.<String>(0);
         }
      }
      
      private static function getLocaString(param1:String) : String
      {
         return LocaUtils.getString("rcl.quest","rcl.quest.task." + param1);
      }
      
      private function buildVirtualTasks() : void
      {
         this._taskToVirtualTaskDict[1644] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("1641",50017,"1642"),getQuestVirtualTaskVo("1642",50013,"1643","11001",1641),getQuestVirtualTaskVo("1643",50015,"1644","11001",1642)];
         this._taskToVirtualTaskDict[1664] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("1661",50017,"1662"),getQuestVirtualTaskVo("1662",50021,"1663","1661"),getQuestVirtualTaskVo("1663",50015,"1664","1662")];
         this._taskToVirtualTaskDict[1772] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("1771",50015,"1772")];
         this._taskToVirtualTaskDict[1812] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("1811",50013,"1812")];
         this._taskToVirtualTaskDict[1742] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("1741",50017,"1742")];
         this._taskToVirtualTaskDict[1752] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("1751",50013,"1752")];
         this._taskToVirtualTaskDict[1712] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("1711",50013,"1712")];
         this._taskToVirtualTaskDict[1942] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("1941",50013,"1942")];
         this._taskToVirtualTaskDict[1903] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("1902",50013,"1903")];
         this._taskToVirtualTaskDict[1823] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("1821",50006,"1822","1821"),getQuestVirtualTaskVo("1822",50013,"1823","1821")];
         this._taskToVirtualTaskDict[1834] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("1831",50020,"1832","1831"),getQuestVirtualTaskVo("1832",50013,"1833","1831"),getQuestVirtualTaskVo("1833",50013,"1834","1832")];
         this._taskToVirtualTaskDict[1843] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("1841",50020,"1842","1841"),getQuestVirtualTaskVo("1842",50013,"1843","1842")];
         this._taskToVirtualTaskDict[1673] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("1671",50013,"1672","1671"),getQuestVirtualTaskVo("1672",50025,"1673","1672")];
         this._taskToVirtualTaskDict[1853] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("1851",50013,"1852","1851"),getQuestVirtualTaskVo("1852",50023,"1853","1852")];
         this._taskToVirtualTaskDict[1702] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("1701",50028,"1702","1701")];
         this._taskToVirtualTaskDict[1902] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("1901",50013,"1902","1900")];
         this._taskToVirtualTaskDict[463] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("462",50013,"463","461")];
         this._taskToVirtualTaskDict[483] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("482",50017,"483","481")];
         this._taskToVirtualTaskDict[493] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("492",50017,"493","491")];
         this._taskToVirtualTaskDict[505] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("501",50036,"503","502"),getQuestVirtualTaskVo("503",50058,"504","502"),getQuestVirtualTaskVo("504",50033,"505","503")];
         this._taskToVirtualTaskDict[512] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("511",50017,"512","511")];
         this._taskToVirtualTaskDict[523] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("524",50017,"521","522"),getQuestVirtualTaskVo("522",50054,"524","523")];
         this._taskToVirtualTaskDict[532] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("531",50056,"532","531")];
         this._taskToVirtualTaskDict[543] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("541",50037,"542","541"),getQuestVirtualTaskVo("542",50033,"543","542")];
         this._taskToVirtualTaskDict[563] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("562",50052,"563","561")];
         this._taskToVirtualTaskDict[572] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("571",50052,"572","571")];
         this._taskToVirtualTaskDict[602] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("601",50017,"602","601")];
         this._taskToVirtualTaskDict[973] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("971",50013,"972","971"),getQuestVirtualTaskVo("972",50032,"973","971")];
         this._taskToVirtualTaskDict[1002] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("1001",50111,"1002","1001")];
         this._taskToVirtualTaskDict[1022] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("1021",50013,"1022","1021")];
         this._taskToVirtualTaskDict[1033] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("1031",50013,"1032","1031"),getQuestVirtualTaskVo("1032",50025,"1033","1032")];
         this._taskToVirtualTaskDict[1082] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("1081",50028,"1082","1081")];
         this._taskToVirtualTaskDict[1593] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("1591",50017,"1592","1591"),getQuestVirtualTaskVo("1592",50103,"1592","1592")];
         this._taskToVirtualTaskDict[1603] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("1601",50105,"1602","1601"),getQuestVirtualTaskVo("1602",50103,"1603","1602")];
         this._taskToVirtualTaskDict[1612] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("1611",50103,"1612","1611")];
         this._taskToVirtualTaskDict[1623] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("1621",50108,"1622","1621"),getQuestVirtualTaskVo("1622",50109,"1623","1621")];
         this._taskToVirtualTaskDict[1972] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("1971",50117,"1972","1971")];
         this._taskToVirtualTaskDict[2013] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("2012",50125,"2011","2013")];
         this._taskToVirtualTaskDict[2032] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("2031",50129,"2032","2031")];
         this._taskToVirtualTaskDict[2073] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("2071",50017,"2072","2071"),getQuestVirtualTaskVo("2072",50131,"2073","2071")];
         this._taskToVirtualTaskDict[1863] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("1861",50017,"1862","1861"),getQuestVirtualTaskVo("1862",50051,"1863","1861")];
         this._taskToVirtualTaskDict[942] = new <QuestVirtualTaskVo>[getQuestVirtualTaskVo("941",50052,"942","941")];
      }
      
      public function get virtualTasks() : Dictionary
      {
         return this._taskToVirtualTaskDict;
      }
      
      public function getVTaskByLocaleId(param1:String) : QuestVirtualTaskVo
      {
         var _loc2_:QuestVirtualTaskVo = null;
         for each(_loc2_ in this.virtualTaskList)
         {
            if(param1 == _loc2_.localeId)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function get virtualTaskList() : Vector.<QuestVirtualTaskVo>
      {
         var _loc2_:Vector.<QuestVirtualTaskVo> = null;
         var _loc3_:QuestVirtualTaskVo = null;
         var _loc1_:Vector.<QuestVirtualTaskVo> = new Vector.<QuestVirtualTaskVo>();
         for each(_loc2_ in this._taskToVirtualTaskDict)
         {
            for each(_loc3_ in _loc2_)
            {
               _loc1_.push(_loc3_);
            }
         }
         return _loc1_;
      }
   }
}

