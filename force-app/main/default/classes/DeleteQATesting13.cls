@isTest
public class DeleteQATesting13 {
    private Integer num = 4564; // conflicting change on the same line

    @isTest
    public static void helloMethod() {
        // Modified same line → guaranteed conflict
        System.debug('THEIRS: Different Hello Method text edge 09/09/26');
    }

    public static testMethod void testNewMethod() {
        // Another conflicting modification on the same lines
        System.debug('OURS: Different extra lifnes to ensure merge conflicts');
    }
}